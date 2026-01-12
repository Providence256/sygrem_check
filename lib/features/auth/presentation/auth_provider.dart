import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:qr_scanner/core/utils/result.dart';
import 'package:qr_scanner/features/auth/data/models/auth_models.dart';
import 'package:qr_scanner/features/auth/data/models/auth_response.dart';
import 'package:qr_scanner/features/auth/data/repository/auth_repository.dart';

class AuthNotifier extends StateNotifier<AsyncValue<AuthResponse?>> {
  final AuthRepository _repository;

  AuthNotifier(this._repository) : super(const AsyncValue.data(null)) {
    _loadPersistedAuth();
  }

  Future<void> _loadPersistedAuth() async {
    try {
      final authResponse = await _repository.getPersistedAuthResponse();
      state = AsyncValue.data(authResponse);
    } catch (e) {
      state = AsyncValue.data(null);
    }
  }

  Future<Result<GenerateCodeResponse>> generateCode(
    String email,
    String password,
  ) async {
    return await _repository.generateVerificationCode(
      VerifyCodeRequest(email: email, password: password),
    );
  }

  Future<Result<AuthResponse>> login(
    String email,
    String password,
    String code,
  ) async {
    state = const AsyncValue.loading();

    final result = await _repository.login(
      LoginRequest(
        email: email,
        password: password,
        code: code,
        resterConnecte: false,
      ),
    );

    return result.when(
      success: (data) {
        state = AsyncValue.data(data);
        return Result.success(data);
      },
      failure: (message, code) {
        state = AsyncValue.error(message, StackTrace.current);
        return Result.failure(message, code: code);
      },
      loading: () => const Result.loading(),
    );
  }

  Future<Result<AuthResponse>> verifyCode(String email, String password) async {
    state = const AsyncValue.loading();

    final result = await _repository.verifyCode(
      VerifyCodeRequest(email: email, password: password),
    );

    return result.when(
      success: (data) {
        state = AsyncValue.data(data);
        return Result.success(data);
      },
      failure: (message, code) {
        state = AsyncValue.error(message, StackTrace.current);
        return Result.failure(message, code: code);
      },
      loading: () => const Result.loading(),
    );
  }

  Future<void> logout() async {
    await _repository.logout();
    state = const AsyncValue.data(null);
  }

  Future<bool> checkLoginStatus() async {
    return await _repository.isLoggedIn();
  }
}

final authNotifierProvider =
    StateNotifierProvider<AuthNotifier, AsyncValue<AuthResponse?>>((ref) {
      return AuthNotifier(ref.read(authRepositoryProvider));
    });

final userInfoProvider = Provider<UserInfo?>((ref) {
  final authState = ref.watch(authNotifierProvider);

  return authState.maybeWhen(
    data: (auth) {
      if (auth == null) return null;

      final parts = auth.codeJwt.split('.');

      if (parts.length != 3) return null;

      final payload = jsonDecode(
        utf8.decode(base64Url.decode(base64Url.normalize(parts[1]))),
      );

      return UserInfo(
        email: payload['unique_name'],
        userId: payload['nameid'],
        role: payload['role'],
      );
    },
    orElse: () => null,
  );
});
