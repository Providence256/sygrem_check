import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:qr_scanner/core/utils/result.dart';
import 'package:qr_scanner/features/auth/data/models/auth_models.dart';
import 'package:qr_scanner/features/auth/data/repository/auth_repository.dart';

final authNotifierProvider =
    StateNotifierProvider<AuthNotifier, AsyncValue<AuthResponse?>>((ref) {
      return AuthNotifier(ref.read(authRepositoryProvider));
    });

class AuthNotifier extends StateNotifier<AsyncValue<AuthResponse?>> {
  final AuthRepository _repository;

  AuthNotifier(this._repository) : super(const AsyncValue.data(null));

  Future<Result<GenerateCodeResponse>> generateCode(String email) async {
    return await _repository.generateVerificationCode(email);
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

  Future<Result<AuthResponse>> verifyCode(String email, String code) async {
    state = const AsyncValue.loading();

    final result = await _repository.verifyCode(
      VerifyCodeRequest(email: email, code: code),
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
