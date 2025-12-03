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
  code: json['code'] as String,
);

Map<String, dynamic> _$$VerifyCodeRequestImplToJson(
  _$VerifyCodeRequestImpl instance,
) => <String, dynamic>{'email': instance.email, 'code': instance.code};

_$AuthResponseImpl _$$AuthResponseImplFromJson(Map<String, dynamic> json) =>
    _$AuthResponseImpl(
      token: json['token'] as String,
      user: UserData.fromJson(json['user'] as Map<String, dynamic>),
      message: json['message'] as String? ?? '',
    );

Map<String, dynamic> _$$AuthResponseImplToJson(_$AuthResponseImpl instance) =>
    <String, dynamic>{
      'token': instance.token,
      'user': instance.user,
      'message': instance.message,
    };

_$UserDataImpl _$$UserDataImplFromJson(Map<String, dynamic> json) =>
    _$UserDataImpl(
      id: json['id'] as String,
      email: json['email'] as String,
      name: json['name'] as String,
      avatar: json['avatar'] as String?,
    );

Map<String, dynamic> _$$UserDataImplToJson(_$UserDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'name': instance.name,
      'avatar': instance.avatar,
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
