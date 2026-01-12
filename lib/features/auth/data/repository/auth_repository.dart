import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:qr_scanner/core/constants/app_constants.dart';
import 'package:qr_scanner/core/network/dio_client.dart';
import 'package:qr_scanner/core/storage/secure_storage_service.dart';
import 'package:qr_scanner/core/utils/result.dart';
import 'package:qr_scanner/features/auth/data/models/auth_models.dart';
import 'package:qr_scanner/features/auth/data/models/auth_response.dart';

final authRepositoryProvider = Provider<AuthRepository>((ref) {
  return AuthRepository(
    ref.read(dioClientProvider),
    ref.read(secureStorageServiceProvider),
  );
});

class AuthRepository {
  final DioClient _dioClient;
  final SecureStorageService _storage;

  AuthRepository(this._dioClient, this._storage);

  Future<Result<GenerateCodeResponse>> generateVerificationCode(
    VerifyCodeRequest request,
  ) async {
    try {
      final response = await _dioClient.post(
        AppConstants.loginEndpoint,
        data: request.toJson(),
      );

      return Result.success(
        GenerateCodeResponse.fromJson(response.data['data']),
      );
    } on DioException catch (e) {
      return Result.failure(
        e.response?.data['message'] ?? 'Failed to generate code',
        code: e.response?.statusCode.toString(),
      );
    } catch (e) {
      return Result.failure('An unexpected error occurred');
    }
  }

  Future<Result<AuthResponse>> login(LoginRequest request) async {
    try {
      final response = await _dioClient.post(
        AppConstants.loginEndpoint,
        data: request.toJson(),
      );

      final authResponse = AuthResponse.fromJson(
        response.data as Map<String, dynamic>,
      );

      // save token and user data
      await _storage.write(AppConstants.authTokenKey, authResponse.codeJwt);
      await _storage.write(AppConstants.isLoggedInKey, 'true');
      await _storage.write(
        AppConstants.authResponseKey,
        jsonEncode(authResponse.toJson()),
      );

      return Result.success(authResponse);
    } on DioException catch (e) {
      return Result.failure(
        e.response?.data['message'] ?? 'Login failed',
        code: e.response?.statusCode.toString(),
      );
    } catch (e) {
      return Result.failure('An unexpected error occurred');
    }
  }

  Future<Result<AuthResponse>> verifyCode(VerifyCodeRequest request) async {
    try {
      final response = await _dioClient.post(
        AppConstants.verifyCodeEndpoint,
        data: request.toJson(),
      );

      final authResponse = AuthResponse.fromJson(response.data['data']);

      // Save token and user data
      await _storage.write(AppConstants.authTokenKey, authResponse.codeJwt);
      await _storage.write(AppConstants.isLoggedInKey, 'true');

      return Result.success(authResponse);
    } on DioException catch (e) {
      return Result.failure(
        e.response?.data['message'] ?? 'Verification failed',
        code: e.response?.statusCode.toString(),
      );
    } catch (e) {
      return Result.failure('An unexpected error occurred');
    }
  }

  Future<void> logout() async {
    await _storage.delete(AppConstants.authTokenKey);
    await _storage.write(AppConstants.isLoggedInKey, 'false');
  }

  Future<bool> isLoggedIn() async {
    final value = await _storage.read(AppConstants.isLoggedInKey);
    return value == 'true';
  }

  Future<String?> getToken() async {
    return await _storage.read(AppConstants.authTokenKey);
  }

  Future<AuthResponse?> getPersistedAuthResponse() async {
    try {
      final authResponseJson = await _storage.read(
        AppConstants.authResponseKey,
      );
      if (authResponseJson != null) {
        return AuthResponse.fromJson(jsonDecode(authResponseJson));
      }
      return null;
    } catch (e) {
      return null;
    }
  }
}
