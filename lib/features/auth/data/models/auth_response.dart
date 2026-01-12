import 'package:freezed_annotation/freezed_annotation.dart';
part 'auth_response.freezed.dart';
part 'auth_response.g.dart';

@freezed
class AuthResponse with _$AuthResponse {
  const factory AuthResponse({
    required String codeJwt,
    required bool codeEstEnvoye,
    required UtilisateurAuthentifie utilisateurAuthentifie,
    required int indicateur,
  }) = _AuthResponse;

  factory AuthResponse.fromJson(Map<String, dynamic> json) =>
      _$AuthResponseFromJson(json);
}

@freezed
class UtilisateurAuthentifie with _$UtilisateurAuthentifie {
  const factory UtilisateurAuthentifie({
    required Role role,
    required Pays pays,
    required Mandataire mandataire,
    Profile? profile,
    required String id,
    required String nom,
    required String email,
    required String telephone,
    required String dateCreation,
    required String creeParUtilisateur,
    String? dateModification,
    String? modifieParUtilisateur,
    required bool actif,
    String? adresse,
    String? codePostal,
    String? ville,
    @Default([]) List<dynamic> mandataireSupplementaire,
    required bool estValide,
  }) = _UtilisateurAuthentifie;

  factory UtilisateurAuthentifie.fromJson(Map<String, dynamic> json) =>
      _$UtilisateurAuthentifieFromJson(json);
}

@freezed
class Role with _$Role {
  const factory Role({required String id, required String nom}) = _Role;

  factory Role.fromJson(Map<String, dynamic> json) => _$RoleFromJson(json);
}

@freezed
class Pays with _$Pays {
  const factory Pays({
    required String id,
    required String codeIsoNumero,
    required String codeIsoAlpha2,
    required String codeIsoAlpha3,
    required String nom,
    required String nationalite,
    required String dateCreation,
    required String creeParUtilisateur,
    String? dateModification,
    String? modifieParUtilisateur,
    required bool actif,
  }) = _Pays;

  factory Pays.fromJson(Map<String, dynamic> json) => _$PaysFromJson(json);
}

@freezed
class Mandataire with _$Mandataire {
  const factory Mandataire({
    String? zoneId,
    required String code,
    required String nom,
    String? adresse,
    String? telephone,
    String? email,
    String? referenceContrat,
    String? texteBasPage,
    required String typeMouvement,
    String? nature,
    required String categorie,
    required String id,
    required String creeParUtilisateur,
    required String dateCreation,
    String? modifieParUtilisateur,
    String? dateModification,
    required bool actif,
  }) = _Mandataire;

  factory Mandataire.fromJson(Map<String, dynamic> json) =>
      _$MandataireFromJson(json);
}

@freezed
class Profile with _$Profile {
  const factory Profile({
    required String code,
    required String description,
    required List<String> accesModules,
    required String id,
    required String creeParUtilisateur,
    required String dateCreation,
    String? modifieParUtilisateur,
    String? dateModification,
    required bool actif,
  }) = _Profile;

  factory Profile.fromJson(Map<String, dynamic> json) =>
      _$ProfileFromJson(json);
}

@freezed
class UserInfo with _$UserInfo {
  const factory UserInfo({
    required String email,
    required String userId,
    required String role,
  }) = _UserInfo;

  factory UserInfo.fromJson(Map<String, dynamic> json) =>
      _$UserInfoFromJson(json);
}
