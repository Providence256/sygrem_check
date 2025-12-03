import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_models.freezed.dart';
part 'auth_models.g.dart';

@freezed
class LoginRequest with _$LoginRequest {
  const factory LoginRequest({
    required String email,
    required String password,
    required String code,
    @Default(false) bool resterConnecte,
  }) = _LoginRequest;

  factory LoginRequest.fromJson(Map<String, dynamic> json) =>
      _$LoginRequestFromJson(json);
}

@freezed
class VerifyCodeRequest with _$VerifyCodeRequest {
  const factory VerifyCodeRequest({
    required String email,
    required String code,
  }) = _VerifyCodeRequest;

  factory VerifyCodeRequest.fromJson(Map<String, dynamic> json) =>
      _$VerifyCodeRequestFromJson(json);
}

@freezed
class AuthResponse with _$AuthResponse {
  const factory AuthResponse({
    required String token,
    required UserData user,
    @Default('') String message,
  }) = _AuthResponse;

  factory AuthResponse.fromJson(Map<String, dynamic> json) =>
      _$AuthResponseFromJson(json);
}

@freezed
class UserData with _$UserData {
  const factory UserData({
    required String id,
    required String email,
    required String name,
    String? avatar,
  }) = _UserData;

  factory UserData.fromJson(Map<String, dynamic> json) =>
      _$UserDataFromJson(json);
}

@freezed
class GenerateCodeResponse with _$GenerateCodeResponse {
  const factory GenerateCodeResponse({
    required bool success,
    required String message,
    int? expiresIn,
  }) = _GenerateCodeResponse;

  factory GenerateCodeResponse.fromJson(Map<String, dynamic> json) =>
      _$GenerateCodeResponseFromJson(json);
}
