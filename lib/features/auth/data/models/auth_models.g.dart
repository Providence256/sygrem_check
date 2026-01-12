// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LoginRequestImpl _$$LoginRequestImplFromJson(Map<String, dynamic> json) =>
    _$LoginRequestImpl(
      email: json['email'] as String,
      password: json['password'] as String,
      code: json['code'] as String,
      resterConnecte: json['resterConnecte'] as bool? ?? false,
    );

Map<String, dynamic> _$$LoginRequestImplToJson(_$LoginRequestImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
      'code': instance.code,
      'resterConnecte': instance.resterConnecte,
    };

_$VerifyCodeRequestImpl _$$VerifyCodeRequestImplFromJson(
  Map<String, dynamic> json,
) => _$VerifyCodeRequestImpl(
  email: json['email'] as String,
  password: json['password'] as String,
);

Map<String, dynamic> _$$VerifyCodeRequestImplToJson(
  _$VerifyCodeRequestImpl instance,
) => <String, dynamic>{'email': instance.email, 'password': instance.password};

_$UserDataImpl _$$UserDataImplFromJson(Map<String, dynamic> json) =>
    _$UserDataImpl(
      email: json['email'] as String,
      role: json['role'] as String,
      userId: json['userId'] as String,
      expiresAt: DateTime.parse(json['expiresAt'] as String),
    );

Map<String, dynamic> _$$UserDataImplToJson(_$UserDataImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
      'role': instance.role,
      'userId': instance.userId,
      'expiresAt': instance.expiresAt.toIso8601String(),
    };

_$GenerateCodeResponseImpl _$$GenerateCodeResponseImplFromJson(
  Map<String, dynamic> json,
) => _$GenerateCodeResponseImpl(
  success: json['success'] as bool,
  message: json['message'] as String,
  expiresIn: (json['expiresIn'] as num?)?.toInt(),
);

Map<String, dynamic> _$$GenerateCodeResponseImplToJson(
  _$GenerateCodeResponseImpl instance,
) => <String, dynamic>{
  'success': instance.success,
  'message': instance.message,
  'expiresIn': instance.expiresIn,
};
