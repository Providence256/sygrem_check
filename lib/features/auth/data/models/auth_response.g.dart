// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AuthResponseImpl _$$AuthResponseImplFromJson(Map<String, dynamic> json) =>
    _$AuthResponseImpl(
      codeJwt: json['codeJwt'] as String?,
      codeEstEnvoye: json['codeEstEnvoye'] as bool,
      utilisateurAuthentifie: json['utilisateurAuthentifie'] == null
          ? null
          : UtilisateurAuthentifie.fromJson(
              json['utilisateurAuthentifie'] as Map<String, dynamic>,
            ),
      indicateur: (json['indicateur'] as num).toInt(),
    );

Map<String, dynamic> _$$AuthResponseImplToJson(_$AuthResponseImpl instance) =>
    <String, dynamic>{
      'codeJwt': instance.codeJwt,
      'codeEstEnvoye': instance.codeEstEnvoye,
      'utilisateurAuthentifie': instance.utilisateurAuthentifie,
      'indicateur': instance.indicateur,
    };

_$UtilisateurAuthentifieImpl _$$UtilisateurAuthentifieImplFromJson(
  Map<String, dynamic> json,
) => _$UtilisateurAuthentifieImpl(
  role: Role.fromJson(json['role'] as Map<String, dynamic>),
  pays: Pays.fromJson(json['pays'] as Map<String, dynamic>),
  mandataire: Mandataire.fromJson(json['mandataire'] as Map<String, dynamic>),
  profile: json['profile'] == null
      ? null
      : Profile.fromJson(json['profile'] as Map<String, dynamic>),
  id: json['id'] as String,
  nom: json['nom'] as String?,
  email: json['email'] as String?,
  telephone: json['telephone'] as String?,
  dateCreation: json['dateCreation'] as String?,
  creeParUtilisateur: json['creeParUtilisateur'] as String?,
  dateModification: json['dateModification'] as String?,
  modifieParUtilisateur: json['modifieParUtilisateur'] as String?,
  actif: json['actif'] as bool,
  adresse: json['adresse'] as String?,
  codePostal: json['codePostal'] as String?,
  ville: json['ville'] as String?,
  mandataireSupplementaire:
      json['mandataireSupplementaire'] as List<dynamic>? ?? const [],
  estValide: json['estValide'] as bool,
);

Map<String, dynamic> _$$UtilisateurAuthentifieImplToJson(
  _$UtilisateurAuthentifieImpl instance,
) => <String, dynamic>{
  'role': instance.role,
  'pays': instance.pays,
  'mandataire': instance.mandataire,
  'profile': instance.profile,
  'id': instance.id,
  'nom': instance.nom,
  'email': instance.email,
  'telephone': instance.telephone,
  'dateCreation': instance.dateCreation,
  'creeParUtilisateur': instance.creeParUtilisateur,
  'dateModification': instance.dateModification,
  'modifieParUtilisateur': instance.modifieParUtilisateur,
  'actif': instance.actif,
  'adresse': instance.adresse,
  'codePostal': instance.codePostal,
  'ville': instance.ville,
  'mandataireSupplementaire': instance.mandataireSupplementaire,
  'estValide': instance.estValide,
};

_$RoleImpl _$$RoleImplFromJson(Map<String, dynamic> json) =>
    _$RoleImpl(id: json['id'] as String, nom: json['nom'] as String?);

Map<String, dynamic> _$$RoleImplToJson(_$RoleImpl instance) =>
    <String, dynamic>{'id': instance.id, 'nom': instance.nom};

_$PaysImpl _$$PaysImplFromJson(Map<String, dynamic> json) => _$PaysImpl(
  id: json['id'] as String,
  codeIsoNumero: json['codeIsoNumero'] as String?,
  codeIsoAlpha2: json['codeIsoAlpha2'] as String?,
  codeIsoAlpha3: json['codeIsoAlpha3'] as String?,
  nom: json['nom'] as String?,
  nationalite: json['nationalite'] as String?,
  dateCreation: json['dateCreation'] as String?,
  creeParUtilisateur: json['creeParUtilisateur'] as String?,
  dateModification: json['dateModification'] as String?,
  modifieParUtilisateur: json['modifieParUtilisateur'] as String?,
  actif: json['actif'] as bool,
);

Map<String, dynamic> _$$PaysImplToJson(_$PaysImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'codeIsoNumero': instance.codeIsoNumero,
      'codeIsoAlpha2': instance.codeIsoAlpha2,
      'codeIsoAlpha3': instance.codeIsoAlpha3,
      'nom': instance.nom,
      'nationalite': instance.nationalite,
      'dateCreation': instance.dateCreation,
      'creeParUtilisateur': instance.creeParUtilisateur,
      'dateModification': instance.dateModification,
      'modifieParUtilisateur': instance.modifieParUtilisateur,
      'actif': instance.actif,
    };

_$MandataireImpl _$$MandataireImplFromJson(Map<String, dynamic> json) =>
    _$MandataireImpl(
      zoneId: json['zoneId'] as String?,
      code: json['code'] as String,
      nom: json['nom'] as String,
      adresse: json['adresse'] as String?,
      telephone: json['telephone'] as String?,
      email: json['email'] as String?,
      referenceContrat: json['referenceContrat'] as String?,
      texteBasPage: json['texteBasPage'] as String?,
      typeMouvement: json['typeMouvement'] as String?,
      nature: json['nature'] as String?,
      categorie: json['categorie'] as String?,
      id: json['id'] as String?,
      creeParUtilisateur: json['creeParUtilisateur'] as String?,
      dateCreation: json['dateCreation'] as String?,
      modifieParUtilisateur: json['modifieParUtilisateur'] as String?,
      dateModification: json['dateModification'] as String?,
      actif: json['actif'] as bool,
    );

Map<String, dynamic> _$$MandataireImplToJson(_$MandataireImpl instance) =>
    <String, dynamic>{
      'zoneId': instance.zoneId,
      'code': instance.code,
      'nom': instance.nom,
      'adresse': instance.adresse,
      'telephone': instance.telephone,
      'email': instance.email,
      'referenceContrat': instance.referenceContrat,
      'texteBasPage': instance.texteBasPage,
      'typeMouvement': instance.typeMouvement,
      'nature': instance.nature,
      'categorie': instance.categorie,
      'id': instance.id,
      'creeParUtilisateur': instance.creeParUtilisateur,
      'dateCreation': instance.dateCreation,
      'modifieParUtilisateur': instance.modifieParUtilisateur,
      'dateModification': instance.dateModification,
      'actif': instance.actif,
    };

_$ProfileImpl _$$ProfileImplFromJson(Map<String, dynamic> json) =>
    _$ProfileImpl(
      code: json['code'] as String?,
      description: json['description'] as String?,
      accesModules: (json['accesModules'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      id: json['id'] as String?,
      creeParUtilisateur: json['creeParUtilisateur'] as String?,
      dateCreation: json['dateCreation'] as String?,
      modifieParUtilisateur: json['modifieParUtilisateur'] as String?,
      dateModification: json['dateModification'] as String?,
      actif: json['actif'] as bool,
    );

Map<String, dynamic> _$$ProfileImplToJson(_$ProfileImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'description': instance.description,
      'accesModules': instance.accesModules,
      'id': instance.id,
      'creeParUtilisateur': instance.creeParUtilisateur,
      'dateCreation': instance.dateCreation,
      'modifieParUtilisateur': instance.modifieParUtilisateur,
      'dateModification': instance.dateModification,
      'actif': instance.actif,
    };

_$UserInfoImpl _$$UserInfoImplFromJson(Map<String, dynamic> json) =>
    _$UserInfoImpl(
      email: json['email'] as String,
      userId: json['userId'] as String,
      role: json['role'] as String,
    );

Map<String, dynamic> _$$UserInfoImplToJson(_$UserInfoImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
      'userId': instance.userId,
      'role': instance.role,
    };
