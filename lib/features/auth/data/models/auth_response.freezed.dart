// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

AuthResponse _$AuthResponseFromJson(Map<String, dynamic> json) {
  return _AuthResponse.fromJson(json);
}

/// @nodoc
mixin _$AuthResponse {
  String get codeJwt => throw _privateConstructorUsedError;
  bool get codeEstEnvoye => throw _privateConstructorUsedError;
  UtilisateurAuthentifie get utilisateurAuthentifie =>
      throw _privateConstructorUsedError;
  int get indicateur => throw _privateConstructorUsedError;

  /// Serializes this AuthResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AuthResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AuthResponseCopyWith<AuthResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthResponseCopyWith<$Res> {
  factory $AuthResponseCopyWith(
    AuthResponse value,
    $Res Function(AuthResponse) then,
  ) = _$AuthResponseCopyWithImpl<$Res, AuthResponse>;
  @useResult
  $Res call({
    String codeJwt,
    bool codeEstEnvoye,
    UtilisateurAuthentifie utilisateurAuthentifie,
    int indicateur,
  });

  $UtilisateurAuthentifieCopyWith<$Res> get utilisateurAuthentifie;
}

/// @nodoc
class _$AuthResponseCopyWithImpl<$Res, $Val extends AuthResponse>
    implements $AuthResponseCopyWith<$Res> {
  _$AuthResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? codeJwt = null,
    Object? codeEstEnvoye = null,
    Object? utilisateurAuthentifie = null,
    Object? indicateur = null,
  }) {
    return _then(
      _value.copyWith(
            codeJwt: null == codeJwt
                ? _value.codeJwt
                : codeJwt // ignore: cast_nullable_to_non_nullable
                      as String,
            codeEstEnvoye: null == codeEstEnvoye
                ? _value.codeEstEnvoye
                : codeEstEnvoye // ignore: cast_nullable_to_non_nullable
                      as bool,
            utilisateurAuthentifie: null == utilisateurAuthentifie
                ? _value.utilisateurAuthentifie
                : utilisateurAuthentifie // ignore: cast_nullable_to_non_nullable
                      as UtilisateurAuthentifie,
            indicateur: null == indicateur
                ? _value.indicateur
                : indicateur // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }

  /// Create a copy of AuthResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UtilisateurAuthentifieCopyWith<$Res> get utilisateurAuthentifie {
    return $UtilisateurAuthentifieCopyWith<$Res>(
      _value.utilisateurAuthentifie,
      (value) {
        return _then(_value.copyWith(utilisateurAuthentifie: value) as $Val);
      },
    );
  }
}

/// @nodoc
abstract class _$$AuthResponseImplCopyWith<$Res>
    implements $AuthResponseCopyWith<$Res> {
  factory _$$AuthResponseImplCopyWith(
    _$AuthResponseImpl value,
    $Res Function(_$AuthResponseImpl) then,
  ) = __$$AuthResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String codeJwt,
    bool codeEstEnvoye,
    UtilisateurAuthentifie utilisateurAuthentifie,
    int indicateur,
  });

  @override
  $UtilisateurAuthentifieCopyWith<$Res> get utilisateurAuthentifie;
}

/// @nodoc
class __$$AuthResponseImplCopyWithImpl<$Res>
    extends _$AuthResponseCopyWithImpl<$Res, _$AuthResponseImpl>
    implements _$$AuthResponseImplCopyWith<$Res> {
  __$$AuthResponseImplCopyWithImpl(
    _$AuthResponseImpl _value,
    $Res Function(_$AuthResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? codeJwt = null,
    Object? codeEstEnvoye = null,
    Object? utilisateurAuthentifie = null,
    Object? indicateur = null,
  }) {
    return _then(
      _$AuthResponseImpl(
        codeJwt: null == codeJwt
            ? _value.codeJwt
            : codeJwt // ignore: cast_nullable_to_non_nullable
                  as String,
        codeEstEnvoye: null == codeEstEnvoye
            ? _value.codeEstEnvoye
            : codeEstEnvoye // ignore: cast_nullable_to_non_nullable
                  as bool,
        utilisateurAuthentifie: null == utilisateurAuthentifie
            ? _value.utilisateurAuthentifie
            : utilisateurAuthentifie // ignore: cast_nullable_to_non_nullable
                  as UtilisateurAuthentifie,
        indicateur: null == indicateur
            ? _value.indicateur
            : indicateur // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$AuthResponseImpl implements _AuthResponse {
  const _$AuthResponseImpl({
    required this.codeJwt,
    required this.codeEstEnvoye,
    required this.utilisateurAuthentifie,
    required this.indicateur,
  });

  factory _$AuthResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuthResponseImplFromJson(json);

  @override
  final String codeJwt;
  @override
  final bool codeEstEnvoye;
  @override
  final UtilisateurAuthentifie utilisateurAuthentifie;
  @override
  final int indicateur;

  @override
  String toString() {
    return 'AuthResponse(codeJwt: $codeJwt, codeEstEnvoye: $codeEstEnvoye, utilisateurAuthentifie: $utilisateurAuthentifie, indicateur: $indicateur)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthResponseImpl &&
            (identical(other.codeJwt, codeJwt) || other.codeJwt == codeJwt) &&
            (identical(other.codeEstEnvoye, codeEstEnvoye) ||
                other.codeEstEnvoye == codeEstEnvoye) &&
            (identical(other.utilisateurAuthentifie, utilisateurAuthentifie) ||
                other.utilisateurAuthentifie == utilisateurAuthentifie) &&
            (identical(other.indicateur, indicateur) ||
                other.indicateur == indicateur));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    codeJwt,
    codeEstEnvoye,
    utilisateurAuthentifie,
    indicateur,
  );

  /// Create a copy of AuthResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthResponseImplCopyWith<_$AuthResponseImpl> get copyWith =>
      __$$AuthResponseImplCopyWithImpl<_$AuthResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthResponseImplToJson(this);
  }
}

abstract class _AuthResponse implements AuthResponse {
  const factory _AuthResponse({
    required final String codeJwt,
    required final bool codeEstEnvoye,
    required final UtilisateurAuthentifie utilisateurAuthentifie,
    required final int indicateur,
  }) = _$AuthResponseImpl;

  factory _AuthResponse.fromJson(Map<String, dynamic> json) =
      _$AuthResponseImpl.fromJson;

  @override
  String get codeJwt;
  @override
  bool get codeEstEnvoye;
  @override
  UtilisateurAuthentifie get utilisateurAuthentifie;
  @override
  int get indicateur;

  /// Create a copy of AuthResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthResponseImplCopyWith<_$AuthResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UtilisateurAuthentifie _$UtilisateurAuthentifieFromJson(
  Map<String, dynamic> json,
) {
  return _UtilisateurAuthentifie.fromJson(json);
}

/// @nodoc
mixin _$UtilisateurAuthentifie {
  Role get role => throw _privateConstructorUsedError;
  Pays get pays => throw _privateConstructorUsedError;
  Mandataire get mandataire => throw _privateConstructorUsedError;
  Profile? get profile => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  String get nom => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get telephone => throw _privateConstructorUsedError;
  String get dateCreation => throw _privateConstructorUsedError;
  String get creeParUtilisateur => throw _privateConstructorUsedError;
  String? get dateModification => throw _privateConstructorUsedError;
  String? get modifieParUtilisateur => throw _privateConstructorUsedError;
  bool get actif => throw _privateConstructorUsedError;
  String? get adresse => throw _privateConstructorUsedError;
  String? get codePostal => throw _privateConstructorUsedError;
  String? get ville => throw _privateConstructorUsedError;
  List<dynamic> get mandataireSupplementaire =>
      throw _privateConstructorUsedError;
  bool get estValide => throw _privateConstructorUsedError;

  /// Serializes this UtilisateurAuthentifie to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UtilisateurAuthentifie
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UtilisateurAuthentifieCopyWith<UtilisateurAuthentifie> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UtilisateurAuthentifieCopyWith<$Res> {
  factory $UtilisateurAuthentifieCopyWith(
    UtilisateurAuthentifie value,
    $Res Function(UtilisateurAuthentifie) then,
  ) = _$UtilisateurAuthentifieCopyWithImpl<$Res, UtilisateurAuthentifie>;
  @useResult
  $Res call({
    Role role,
    Pays pays,
    Mandataire mandataire,
    Profile? profile,
    String id,
    String nom,
    String email,
    String telephone,
    String dateCreation,
    String creeParUtilisateur,
    String? dateModification,
    String? modifieParUtilisateur,
    bool actif,
    String? adresse,
    String? codePostal,
    String? ville,
    List<dynamic> mandataireSupplementaire,
    bool estValide,
  });

  $RoleCopyWith<$Res> get role;
  $PaysCopyWith<$Res> get pays;
  $MandataireCopyWith<$Res> get mandataire;
  $ProfileCopyWith<$Res>? get profile;
}

/// @nodoc
class _$UtilisateurAuthentifieCopyWithImpl<
  $Res,
  $Val extends UtilisateurAuthentifie
>
    implements $UtilisateurAuthentifieCopyWith<$Res> {
  _$UtilisateurAuthentifieCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UtilisateurAuthentifie
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? role = null,
    Object? pays = null,
    Object? mandataire = null,
    Object? profile = freezed,
    Object? id = null,
    Object? nom = null,
    Object? email = null,
    Object? telephone = null,
    Object? dateCreation = null,
    Object? creeParUtilisateur = null,
    Object? dateModification = freezed,
    Object? modifieParUtilisateur = freezed,
    Object? actif = null,
    Object? adresse = freezed,
    Object? codePostal = freezed,
    Object? ville = freezed,
    Object? mandataireSupplementaire = null,
    Object? estValide = null,
  }) {
    return _then(
      _value.copyWith(
            role: null == role
                ? _value.role
                : role // ignore: cast_nullable_to_non_nullable
                      as Role,
            pays: null == pays
                ? _value.pays
                : pays // ignore: cast_nullable_to_non_nullable
                      as Pays,
            mandataire: null == mandataire
                ? _value.mandataire
                : mandataire // ignore: cast_nullable_to_non_nullable
                      as Mandataire,
            profile: freezed == profile
                ? _value.profile
                : profile // ignore: cast_nullable_to_non_nullable
                      as Profile?,
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            nom: null == nom
                ? _value.nom
                : nom // ignore: cast_nullable_to_non_nullable
                      as String,
            email: null == email
                ? _value.email
                : email // ignore: cast_nullable_to_non_nullable
                      as String,
            telephone: null == telephone
                ? _value.telephone
                : telephone // ignore: cast_nullable_to_non_nullable
                      as String,
            dateCreation: null == dateCreation
                ? _value.dateCreation
                : dateCreation // ignore: cast_nullable_to_non_nullable
                      as String,
            creeParUtilisateur: null == creeParUtilisateur
                ? _value.creeParUtilisateur
                : creeParUtilisateur // ignore: cast_nullable_to_non_nullable
                      as String,
            dateModification: freezed == dateModification
                ? _value.dateModification
                : dateModification // ignore: cast_nullable_to_non_nullable
                      as String?,
            modifieParUtilisateur: freezed == modifieParUtilisateur
                ? _value.modifieParUtilisateur
                : modifieParUtilisateur // ignore: cast_nullable_to_non_nullable
                      as String?,
            actif: null == actif
                ? _value.actif
                : actif // ignore: cast_nullable_to_non_nullable
                      as bool,
            adresse: freezed == adresse
                ? _value.adresse
                : adresse // ignore: cast_nullable_to_non_nullable
                      as String?,
            codePostal: freezed == codePostal
                ? _value.codePostal
                : codePostal // ignore: cast_nullable_to_non_nullable
                      as String?,
            ville: freezed == ville
                ? _value.ville
                : ville // ignore: cast_nullable_to_non_nullable
                      as String?,
            mandataireSupplementaire: null == mandataireSupplementaire
                ? _value.mandataireSupplementaire
                : mandataireSupplementaire // ignore: cast_nullable_to_non_nullable
                      as List<dynamic>,
            estValide: null == estValide
                ? _value.estValide
                : estValide // ignore: cast_nullable_to_non_nullable
                      as bool,
          )
          as $Val,
    );
  }

  /// Create a copy of UtilisateurAuthentifie
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RoleCopyWith<$Res> get role {
    return $RoleCopyWith<$Res>(_value.role, (value) {
      return _then(_value.copyWith(role: value) as $Val);
    });
  }

  /// Create a copy of UtilisateurAuthentifie
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaysCopyWith<$Res> get pays {
    return $PaysCopyWith<$Res>(_value.pays, (value) {
      return _then(_value.copyWith(pays: value) as $Val);
    });
  }

  /// Create a copy of UtilisateurAuthentifie
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MandataireCopyWith<$Res> get mandataire {
    return $MandataireCopyWith<$Res>(_value.mandataire, (value) {
      return _then(_value.copyWith(mandataire: value) as $Val);
    });
  }

  /// Create a copy of UtilisateurAuthentifie
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProfileCopyWith<$Res>? get profile {
    if (_value.profile == null) {
      return null;
    }

    return $ProfileCopyWith<$Res>(_value.profile!, (value) {
      return _then(_value.copyWith(profile: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UtilisateurAuthentifieImplCopyWith<$Res>
    implements $UtilisateurAuthentifieCopyWith<$Res> {
  factory _$$UtilisateurAuthentifieImplCopyWith(
    _$UtilisateurAuthentifieImpl value,
    $Res Function(_$UtilisateurAuthentifieImpl) then,
  ) = __$$UtilisateurAuthentifieImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    Role role,
    Pays pays,
    Mandataire mandataire,
    Profile? profile,
    String id,
    String nom,
    String email,
    String telephone,
    String dateCreation,
    String creeParUtilisateur,
    String? dateModification,
    String? modifieParUtilisateur,
    bool actif,
    String? adresse,
    String? codePostal,
    String? ville,
    List<dynamic> mandataireSupplementaire,
    bool estValide,
  });

  @override
  $RoleCopyWith<$Res> get role;
  @override
  $PaysCopyWith<$Res> get pays;
  @override
  $MandataireCopyWith<$Res> get mandataire;
  @override
  $ProfileCopyWith<$Res>? get profile;
}

/// @nodoc
class __$$UtilisateurAuthentifieImplCopyWithImpl<$Res>
    extends
        _$UtilisateurAuthentifieCopyWithImpl<$Res, _$UtilisateurAuthentifieImpl>
    implements _$$UtilisateurAuthentifieImplCopyWith<$Res> {
  __$$UtilisateurAuthentifieImplCopyWithImpl(
    _$UtilisateurAuthentifieImpl _value,
    $Res Function(_$UtilisateurAuthentifieImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UtilisateurAuthentifie
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? role = null,
    Object? pays = null,
    Object? mandataire = null,
    Object? profile = freezed,
    Object? id = null,
    Object? nom = null,
    Object? email = null,
    Object? telephone = null,
    Object? dateCreation = null,
    Object? creeParUtilisateur = null,
    Object? dateModification = freezed,
    Object? modifieParUtilisateur = freezed,
    Object? actif = null,
    Object? adresse = freezed,
    Object? codePostal = freezed,
    Object? ville = freezed,
    Object? mandataireSupplementaire = null,
    Object? estValide = null,
  }) {
    return _then(
      _$UtilisateurAuthentifieImpl(
        role: null == role
            ? _value.role
            : role // ignore: cast_nullable_to_non_nullable
                  as Role,
        pays: null == pays
            ? _value.pays
            : pays // ignore: cast_nullable_to_non_nullable
                  as Pays,
        mandataire: null == mandataire
            ? _value.mandataire
            : mandataire // ignore: cast_nullable_to_non_nullable
                  as Mandataire,
        profile: freezed == profile
            ? _value.profile
            : profile // ignore: cast_nullable_to_non_nullable
                  as Profile?,
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        nom: null == nom
            ? _value.nom
            : nom // ignore: cast_nullable_to_non_nullable
                  as String,
        email: null == email
            ? _value.email
            : email // ignore: cast_nullable_to_non_nullable
                  as String,
        telephone: null == telephone
            ? _value.telephone
            : telephone // ignore: cast_nullable_to_non_nullable
                  as String,
        dateCreation: null == dateCreation
            ? _value.dateCreation
            : dateCreation // ignore: cast_nullable_to_non_nullable
                  as String,
        creeParUtilisateur: null == creeParUtilisateur
            ? _value.creeParUtilisateur
            : creeParUtilisateur // ignore: cast_nullable_to_non_nullable
                  as String,
        dateModification: freezed == dateModification
            ? _value.dateModification
            : dateModification // ignore: cast_nullable_to_non_nullable
                  as String?,
        modifieParUtilisateur: freezed == modifieParUtilisateur
            ? _value.modifieParUtilisateur
            : modifieParUtilisateur // ignore: cast_nullable_to_non_nullable
                  as String?,
        actif: null == actif
            ? _value.actif
            : actif // ignore: cast_nullable_to_non_nullable
                  as bool,
        adresse: freezed == adresse
            ? _value.adresse
            : adresse // ignore: cast_nullable_to_non_nullable
                  as String?,
        codePostal: freezed == codePostal
            ? _value.codePostal
            : codePostal // ignore: cast_nullable_to_non_nullable
                  as String?,
        ville: freezed == ville
            ? _value.ville
            : ville // ignore: cast_nullable_to_non_nullable
                  as String?,
        mandataireSupplementaire: null == mandataireSupplementaire
            ? _value._mandataireSupplementaire
            : mandataireSupplementaire // ignore: cast_nullable_to_non_nullable
                  as List<dynamic>,
        estValide: null == estValide
            ? _value.estValide
            : estValide // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$UtilisateurAuthentifieImpl implements _UtilisateurAuthentifie {
  const _$UtilisateurAuthentifieImpl({
    required this.role,
    required this.pays,
    required this.mandataire,
    this.profile,
    required this.id,
    required this.nom,
    required this.email,
    required this.telephone,
    required this.dateCreation,
    required this.creeParUtilisateur,
    this.dateModification,
    this.modifieParUtilisateur,
    required this.actif,
    this.adresse,
    this.codePostal,
    this.ville,
    final List<dynamic> mandataireSupplementaire = const [],
    required this.estValide,
  }) : _mandataireSupplementaire = mandataireSupplementaire;

  factory _$UtilisateurAuthentifieImpl.fromJson(Map<String, dynamic> json) =>
      _$$UtilisateurAuthentifieImplFromJson(json);

  @override
  final Role role;
  @override
  final Pays pays;
  @override
  final Mandataire mandataire;
  @override
  final Profile? profile;
  @override
  final String id;
  @override
  final String nom;
  @override
  final String email;
  @override
  final String telephone;
  @override
  final String dateCreation;
  @override
  final String creeParUtilisateur;
  @override
  final String? dateModification;
  @override
  final String? modifieParUtilisateur;
  @override
  final bool actif;
  @override
  final String? adresse;
  @override
  final String? codePostal;
  @override
  final String? ville;
  final List<dynamic> _mandataireSupplementaire;
  @override
  @JsonKey()
  List<dynamic> get mandataireSupplementaire {
    if (_mandataireSupplementaire is EqualUnmodifiableListView)
      return _mandataireSupplementaire;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_mandataireSupplementaire);
  }

  @override
  final bool estValide;

  @override
  String toString() {
    return 'UtilisateurAuthentifie(role: $role, pays: $pays, mandataire: $mandataire, profile: $profile, id: $id, nom: $nom, email: $email, telephone: $telephone, dateCreation: $dateCreation, creeParUtilisateur: $creeParUtilisateur, dateModification: $dateModification, modifieParUtilisateur: $modifieParUtilisateur, actif: $actif, adresse: $adresse, codePostal: $codePostal, ville: $ville, mandataireSupplementaire: $mandataireSupplementaire, estValide: $estValide)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UtilisateurAuthentifieImpl &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.pays, pays) || other.pays == pays) &&
            (identical(other.mandataire, mandataire) ||
                other.mandataire == mandataire) &&
            (identical(other.profile, profile) || other.profile == profile) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.nom, nom) || other.nom == nom) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.telephone, telephone) ||
                other.telephone == telephone) &&
            (identical(other.dateCreation, dateCreation) ||
                other.dateCreation == dateCreation) &&
            (identical(other.creeParUtilisateur, creeParUtilisateur) ||
                other.creeParUtilisateur == creeParUtilisateur) &&
            (identical(other.dateModification, dateModification) ||
                other.dateModification == dateModification) &&
            (identical(other.modifieParUtilisateur, modifieParUtilisateur) ||
                other.modifieParUtilisateur == modifieParUtilisateur) &&
            (identical(other.actif, actif) || other.actif == actif) &&
            (identical(other.adresse, adresse) || other.adresse == adresse) &&
            (identical(other.codePostal, codePostal) ||
                other.codePostal == codePostal) &&
            (identical(other.ville, ville) || other.ville == ville) &&
            const DeepCollectionEquality().equals(
              other._mandataireSupplementaire,
              _mandataireSupplementaire,
            ) &&
            (identical(other.estValide, estValide) ||
                other.estValide == estValide));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    role,
    pays,
    mandataire,
    profile,
    id,
    nom,
    email,
    telephone,
    dateCreation,
    creeParUtilisateur,
    dateModification,
    modifieParUtilisateur,
    actif,
    adresse,
    codePostal,
    ville,
    const DeepCollectionEquality().hash(_mandataireSupplementaire),
    estValide,
  );

  /// Create a copy of UtilisateurAuthentifie
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UtilisateurAuthentifieImplCopyWith<_$UtilisateurAuthentifieImpl>
  get copyWith =>
      __$$UtilisateurAuthentifieImplCopyWithImpl<_$UtilisateurAuthentifieImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$UtilisateurAuthentifieImplToJson(this);
  }
}

abstract class _UtilisateurAuthentifie implements UtilisateurAuthentifie {
  const factory _UtilisateurAuthentifie({
    required final Role role,
    required final Pays pays,
    required final Mandataire mandataire,
    final Profile? profile,
    required final String id,
    required final String nom,
    required final String email,
    required final String telephone,
    required final String dateCreation,
    required final String creeParUtilisateur,
    final String? dateModification,
    final String? modifieParUtilisateur,
    required final bool actif,
    final String? adresse,
    final String? codePostal,
    final String? ville,
    final List<dynamic> mandataireSupplementaire,
    required final bool estValide,
  }) = _$UtilisateurAuthentifieImpl;

  factory _UtilisateurAuthentifie.fromJson(Map<String, dynamic> json) =
      _$UtilisateurAuthentifieImpl.fromJson;

  @override
  Role get role;
  @override
  Pays get pays;
  @override
  Mandataire get mandataire;
  @override
  Profile? get profile;
  @override
  String get id;
  @override
  String get nom;
  @override
  String get email;
  @override
  String get telephone;
  @override
  String get dateCreation;
  @override
  String get creeParUtilisateur;
  @override
  String? get dateModification;
  @override
  String? get modifieParUtilisateur;
  @override
  bool get actif;
  @override
  String? get adresse;
  @override
  String? get codePostal;
  @override
  String? get ville;
  @override
  List<dynamic> get mandataireSupplementaire;
  @override
  bool get estValide;

  /// Create a copy of UtilisateurAuthentifie
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UtilisateurAuthentifieImplCopyWith<_$UtilisateurAuthentifieImpl>
  get copyWith => throw _privateConstructorUsedError;
}

Role _$RoleFromJson(Map<String, dynamic> json) {
  return _Role.fromJson(json);
}

/// @nodoc
mixin _$Role {
  String get id => throw _privateConstructorUsedError;
  String get nom => throw _privateConstructorUsedError;

  /// Serializes this Role to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Role
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RoleCopyWith<Role> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoleCopyWith<$Res> {
  factory $RoleCopyWith(Role value, $Res Function(Role) then) =
      _$RoleCopyWithImpl<$Res, Role>;
  @useResult
  $Res call({String id, String nom});
}

/// @nodoc
class _$RoleCopyWithImpl<$Res, $Val extends Role>
    implements $RoleCopyWith<$Res> {
  _$RoleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Role
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null, Object? nom = null}) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            nom: null == nom
                ? _value.nom
                : nom // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$RoleImplCopyWith<$Res> implements $RoleCopyWith<$Res> {
  factory _$$RoleImplCopyWith(
    _$RoleImpl value,
    $Res Function(_$RoleImpl) then,
  ) = __$$RoleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String nom});
}

/// @nodoc
class __$$RoleImplCopyWithImpl<$Res>
    extends _$RoleCopyWithImpl<$Res, _$RoleImpl>
    implements _$$RoleImplCopyWith<$Res> {
  __$$RoleImplCopyWithImpl(_$RoleImpl _value, $Res Function(_$RoleImpl) _then)
    : super(_value, _then);

  /// Create a copy of Role
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null, Object? nom = null}) {
    return _then(
      _$RoleImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        nom: null == nom
            ? _value.nom
            : nom // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$RoleImpl implements _Role {
  const _$RoleImpl({required this.id, required this.nom});

  factory _$RoleImpl.fromJson(Map<String, dynamic> json) =>
      _$$RoleImplFromJson(json);

  @override
  final String id;
  @override
  final String nom;

  @override
  String toString() {
    return 'Role(id: $id, nom: $nom)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RoleImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.nom, nom) || other.nom == nom));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, nom);

  /// Create a copy of Role
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RoleImplCopyWith<_$RoleImpl> get copyWith =>
      __$$RoleImplCopyWithImpl<_$RoleImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RoleImplToJson(this);
  }
}

abstract class _Role implements Role {
  const factory _Role({required final String id, required final String nom}) =
      _$RoleImpl;

  factory _Role.fromJson(Map<String, dynamic> json) = _$RoleImpl.fromJson;

  @override
  String get id;
  @override
  String get nom;

  /// Create a copy of Role
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RoleImplCopyWith<_$RoleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Pays _$PaysFromJson(Map<String, dynamic> json) {
  return _Pays.fromJson(json);
}

/// @nodoc
mixin _$Pays {
  String get id => throw _privateConstructorUsedError;
  String get codeIsoNumero => throw _privateConstructorUsedError;
  String get codeIsoAlpha2 => throw _privateConstructorUsedError;
  String get codeIsoAlpha3 => throw _privateConstructorUsedError;
  String get nom => throw _privateConstructorUsedError;
  String get nationalite => throw _privateConstructorUsedError;
  String get dateCreation => throw _privateConstructorUsedError;
  String get creeParUtilisateur => throw _privateConstructorUsedError;
  String? get dateModification => throw _privateConstructorUsedError;
  String? get modifieParUtilisateur => throw _privateConstructorUsedError;
  bool get actif => throw _privateConstructorUsedError;

  /// Serializes this Pays to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Pays
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PaysCopyWith<Pays> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaysCopyWith<$Res> {
  factory $PaysCopyWith(Pays value, $Res Function(Pays) then) =
      _$PaysCopyWithImpl<$Res, Pays>;
  @useResult
  $Res call({
    String id,
    String codeIsoNumero,
    String codeIsoAlpha2,
    String codeIsoAlpha3,
    String nom,
    String nationalite,
    String dateCreation,
    String creeParUtilisateur,
    String? dateModification,
    String? modifieParUtilisateur,
    bool actif,
  });
}

/// @nodoc
class _$PaysCopyWithImpl<$Res, $Val extends Pays>
    implements $PaysCopyWith<$Res> {
  _$PaysCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Pays
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? codeIsoNumero = null,
    Object? codeIsoAlpha2 = null,
    Object? codeIsoAlpha3 = null,
    Object? nom = null,
    Object? nationalite = null,
    Object? dateCreation = null,
    Object? creeParUtilisateur = null,
    Object? dateModification = freezed,
    Object? modifieParUtilisateur = freezed,
    Object? actif = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            codeIsoNumero: null == codeIsoNumero
                ? _value.codeIsoNumero
                : codeIsoNumero // ignore: cast_nullable_to_non_nullable
                      as String,
            codeIsoAlpha2: null == codeIsoAlpha2
                ? _value.codeIsoAlpha2
                : codeIsoAlpha2 // ignore: cast_nullable_to_non_nullable
                      as String,
            codeIsoAlpha3: null == codeIsoAlpha3
                ? _value.codeIsoAlpha3
                : codeIsoAlpha3 // ignore: cast_nullable_to_non_nullable
                      as String,
            nom: null == nom
                ? _value.nom
                : nom // ignore: cast_nullable_to_non_nullable
                      as String,
            nationalite: null == nationalite
                ? _value.nationalite
                : nationalite // ignore: cast_nullable_to_non_nullable
                      as String,
            dateCreation: null == dateCreation
                ? _value.dateCreation
                : dateCreation // ignore: cast_nullable_to_non_nullable
                      as String,
            creeParUtilisateur: null == creeParUtilisateur
                ? _value.creeParUtilisateur
                : creeParUtilisateur // ignore: cast_nullable_to_non_nullable
                      as String,
            dateModification: freezed == dateModification
                ? _value.dateModification
                : dateModification // ignore: cast_nullable_to_non_nullable
                      as String?,
            modifieParUtilisateur: freezed == modifieParUtilisateur
                ? _value.modifieParUtilisateur
                : modifieParUtilisateur // ignore: cast_nullable_to_non_nullable
                      as String?,
            actif: null == actif
                ? _value.actif
                : actif // ignore: cast_nullable_to_non_nullable
                      as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$PaysImplCopyWith<$Res> implements $PaysCopyWith<$Res> {
  factory _$$PaysImplCopyWith(
    _$PaysImpl value,
    $Res Function(_$PaysImpl) then,
  ) = __$$PaysImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String codeIsoNumero,
    String codeIsoAlpha2,
    String codeIsoAlpha3,
    String nom,
    String nationalite,
    String dateCreation,
    String creeParUtilisateur,
    String? dateModification,
    String? modifieParUtilisateur,
    bool actif,
  });
}

/// @nodoc
class __$$PaysImplCopyWithImpl<$Res>
    extends _$PaysCopyWithImpl<$Res, _$PaysImpl>
    implements _$$PaysImplCopyWith<$Res> {
  __$$PaysImplCopyWithImpl(_$PaysImpl _value, $Res Function(_$PaysImpl) _then)
    : super(_value, _then);

  /// Create a copy of Pays
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? codeIsoNumero = null,
    Object? codeIsoAlpha2 = null,
    Object? codeIsoAlpha3 = null,
    Object? nom = null,
    Object? nationalite = null,
    Object? dateCreation = null,
    Object? creeParUtilisateur = null,
    Object? dateModification = freezed,
    Object? modifieParUtilisateur = freezed,
    Object? actif = null,
  }) {
    return _then(
      _$PaysImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        codeIsoNumero: null == codeIsoNumero
            ? _value.codeIsoNumero
            : codeIsoNumero // ignore: cast_nullable_to_non_nullable
                  as String,
        codeIsoAlpha2: null == codeIsoAlpha2
            ? _value.codeIsoAlpha2
            : codeIsoAlpha2 // ignore: cast_nullable_to_non_nullable
                  as String,
        codeIsoAlpha3: null == codeIsoAlpha3
            ? _value.codeIsoAlpha3
            : codeIsoAlpha3 // ignore: cast_nullable_to_non_nullable
                  as String,
        nom: null == nom
            ? _value.nom
            : nom // ignore: cast_nullable_to_non_nullable
                  as String,
        nationalite: null == nationalite
            ? _value.nationalite
            : nationalite // ignore: cast_nullable_to_non_nullable
                  as String,
        dateCreation: null == dateCreation
            ? _value.dateCreation
            : dateCreation // ignore: cast_nullable_to_non_nullable
                  as String,
        creeParUtilisateur: null == creeParUtilisateur
            ? _value.creeParUtilisateur
            : creeParUtilisateur // ignore: cast_nullable_to_non_nullable
                  as String,
        dateModification: freezed == dateModification
            ? _value.dateModification
            : dateModification // ignore: cast_nullable_to_non_nullable
                  as String?,
        modifieParUtilisateur: freezed == modifieParUtilisateur
            ? _value.modifieParUtilisateur
            : modifieParUtilisateur // ignore: cast_nullable_to_non_nullable
                  as String?,
        actif: null == actif
            ? _value.actif
            : actif // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PaysImpl implements _Pays {
  const _$PaysImpl({
    required this.id,
    required this.codeIsoNumero,
    required this.codeIsoAlpha2,
    required this.codeIsoAlpha3,
    required this.nom,
    required this.nationalite,
    required this.dateCreation,
    required this.creeParUtilisateur,
    this.dateModification,
    this.modifieParUtilisateur,
    required this.actif,
  });

  factory _$PaysImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaysImplFromJson(json);

  @override
  final String id;
  @override
  final String codeIsoNumero;
  @override
  final String codeIsoAlpha2;
  @override
  final String codeIsoAlpha3;
  @override
  final String nom;
  @override
  final String nationalite;
  @override
  final String dateCreation;
  @override
  final String creeParUtilisateur;
  @override
  final String? dateModification;
  @override
  final String? modifieParUtilisateur;
  @override
  final bool actif;

  @override
  String toString() {
    return 'Pays(id: $id, codeIsoNumero: $codeIsoNumero, codeIsoAlpha2: $codeIsoAlpha2, codeIsoAlpha3: $codeIsoAlpha3, nom: $nom, nationalite: $nationalite, dateCreation: $dateCreation, creeParUtilisateur: $creeParUtilisateur, dateModification: $dateModification, modifieParUtilisateur: $modifieParUtilisateur, actif: $actif)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaysImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.codeIsoNumero, codeIsoNumero) ||
                other.codeIsoNumero == codeIsoNumero) &&
            (identical(other.codeIsoAlpha2, codeIsoAlpha2) ||
                other.codeIsoAlpha2 == codeIsoAlpha2) &&
            (identical(other.codeIsoAlpha3, codeIsoAlpha3) ||
                other.codeIsoAlpha3 == codeIsoAlpha3) &&
            (identical(other.nom, nom) || other.nom == nom) &&
            (identical(other.nationalite, nationalite) ||
                other.nationalite == nationalite) &&
            (identical(other.dateCreation, dateCreation) ||
                other.dateCreation == dateCreation) &&
            (identical(other.creeParUtilisateur, creeParUtilisateur) ||
                other.creeParUtilisateur == creeParUtilisateur) &&
            (identical(other.dateModification, dateModification) ||
                other.dateModification == dateModification) &&
            (identical(other.modifieParUtilisateur, modifieParUtilisateur) ||
                other.modifieParUtilisateur == modifieParUtilisateur) &&
            (identical(other.actif, actif) || other.actif == actif));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    codeIsoNumero,
    codeIsoAlpha2,
    codeIsoAlpha3,
    nom,
    nationalite,
    dateCreation,
    creeParUtilisateur,
    dateModification,
    modifieParUtilisateur,
    actif,
  );

  /// Create a copy of Pays
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaysImplCopyWith<_$PaysImpl> get copyWith =>
      __$$PaysImplCopyWithImpl<_$PaysImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaysImplToJson(this);
  }
}

abstract class _Pays implements Pays {
  const factory _Pays({
    required final String id,
    required final String codeIsoNumero,
    required final String codeIsoAlpha2,
    required final String codeIsoAlpha3,
    required final String nom,
    required final String nationalite,
    required final String dateCreation,
    required final String creeParUtilisateur,
    final String? dateModification,
    final String? modifieParUtilisateur,
    required final bool actif,
  }) = _$PaysImpl;

  factory _Pays.fromJson(Map<String, dynamic> json) = _$PaysImpl.fromJson;

  @override
  String get id;
  @override
  String get codeIsoNumero;
  @override
  String get codeIsoAlpha2;
  @override
  String get codeIsoAlpha3;
  @override
  String get nom;
  @override
  String get nationalite;
  @override
  String get dateCreation;
  @override
  String get creeParUtilisateur;
  @override
  String? get dateModification;
  @override
  String? get modifieParUtilisateur;
  @override
  bool get actif;

  /// Create a copy of Pays
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaysImplCopyWith<_$PaysImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Mandataire _$MandataireFromJson(Map<String, dynamic> json) {
  return _Mandataire.fromJson(json);
}

/// @nodoc
mixin _$Mandataire {
  String? get zoneId => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;
  String get nom => throw _privateConstructorUsedError;
  String? get adresse => throw _privateConstructorUsedError;
  String? get telephone => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get referenceContrat => throw _privateConstructorUsedError;
  String? get texteBasPage => throw _privateConstructorUsedError;
  String get typeMouvement => throw _privateConstructorUsedError;
  String? get nature => throw _privateConstructorUsedError;
  String get categorie => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  String get creeParUtilisateur => throw _privateConstructorUsedError;
  String get dateCreation => throw _privateConstructorUsedError;
  String? get modifieParUtilisateur => throw _privateConstructorUsedError;
  String? get dateModification => throw _privateConstructorUsedError;
  bool get actif => throw _privateConstructorUsedError;

  /// Serializes this Mandataire to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Mandataire
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MandataireCopyWith<Mandataire> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MandataireCopyWith<$Res> {
  factory $MandataireCopyWith(
    Mandataire value,
    $Res Function(Mandataire) then,
  ) = _$MandataireCopyWithImpl<$Res, Mandataire>;
  @useResult
  $Res call({
    String? zoneId,
    String code,
    String nom,
    String? adresse,
    String? telephone,
    String? email,
    String? referenceContrat,
    String? texteBasPage,
    String typeMouvement,
    String? nature,
    String categorie,
    String id,
    String creeParUtilisateur,
    String dateCreation,
    String? modifieParUtilisateur,
    String? dateModification,
    bool actif,
  });
}

/// @nodoc
class _$MandataireCopyWithImpl<$Res, $Val extends Mandataire>
    implements $MandataireCopyWith<$Res> {
  _$MandataireCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Mandataire
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? zoneId = freezed,
    Object? code = null,
    Object? nom = null,
    Object? adresse = freezed,
    Object? telephone = freezed,
    Object? email = freezed,
    Object? referenceContrat = freezed,
    Object? texteBasPage = freezed,
    Object? typeMouvement = null,
    Object? nature = freezed,
    Object? categorie = null,
    Object? id = null,
    Object? creeParUtilisateur = null,
    Object? dateCreation = null,
    Object? modifieParUtilisateur = freezed,
    Object? dateModification = freezed,
    Object? actif = null,
  }) {
    return _then(
      _value.copyWith(
            zoneId: freezed == zoneId
                ? _value.zoneId
                : zoneId // ignore: cast_nullable_to_non_nullable
                      as String?,
            code: null == code
                ? _value.code
                : code // ignore: cast_nullable_to_non_nullable
                      as String,
            nom: null == nom
                ? _value.nom
                : nom // ignore: cast_nullable_to_non_nullable
                      as String,
            adresse: freezed == adresse
                ? _value.adresse
                : adresse // ignore: cast_nullable_to_non_nullable
                      as String?,
            telephone: freezed == telephone
                ? _value.telephone
                : telephone // ignore: cast_nullable_to_non_nullable
                      as String?,
            email: freezed == email
                ? _value.email
                : email // ignore: cast_nullable_to_non_nullable
                      as String?,
            referenceContrat: freezed == referenceContrat
                ? _value.referenceContrat
                : referenceContrat // ignore: cast_nullable_to_non_nullable
                      as String?,
            texteBasPage: freezed == texteBasPage
                ? _value.texteBasPage
                : texteBasPage // ignore: cast_nullable_to_non_nullable
                      as String?,
            typeMouvement: null == typeMouvement
                ? _value.typeMouvement
                : typeMouvement // ignore: cast_nullable_to_non_nullable
                      as String,
            nature: freezed == nature
                ? _value.nature
                : nature // ignore: cast_nullable_to_non_nullable
                      as String?,
            categorie: null == categorie
                ? _value.categorie
                : categorie // ignore: cast_nullable_to_non_nullable
                      as String,
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            creeParUtilisateur: null == creeParUtilisateur
                ? _value.creeParUtilisateur
                : creeParUtilisateur // ignore: cast_nullable_to_non_nullable
                      as String,
            dateCreation: null == dateCreation
                ? _value.dateCreation
                : dateCreation // ignore: cast_nullable_to_non_nullable
                      as String,
            modifieParUtilisateur: freezed == modifieParUtilisateur
                ? _value.modifieParUtilisateur
                : modifieParUtilisateur // ignore: cast_nullable_to_non_nullable
                      as String?,
            dateModification: freezed == dateModification
                ? _value.dateModification
                : dateModification // ignore: cast_nullable_to_non_nullable
                      as String?,
            actif: null == actif
                ? _value.actif
                : actif // ignore: cast_nullable_to_non_nullable
                      as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$MandataireImplCopyWith<$Res>
    implements $MandataireCopyWith<$Res> {
  factory _$$MandataireImplCopyWith(
    _$MandataireImpl value,
    $Res Function(_$MandataireImpl) then,
  ) = __$$MandataireImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String? zoneId,
    String code,
    String nom,
    String? adresse,
    String? telephone,
    String? email,
    String? referenceContrat,
    String? texteBasPage,
    String typeMouvement,
    String? nature,
    String categorie,
    String id,
    String creeParUtilisateur,
    String dateCreation,
    String? modifieParUtilisateur,
    String? dateModification,
    bool actif,
  });
}

/// @nodoc
class __$$MandataireImplCopyWithImpl<$Res>
    extends _$MandataireCopyWithImpl<$Res, _$MandataireImpl>
    implements _$$MandataireImplCopyWith<$Res> {
  __$$MandataireImplCopyWithImpl(
    _$MandataireImpl _value,
    $Res Function(_$MandataireImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Mandataire
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? zoneId = freezed,
    Object? code = null,
    Object? nom = null,
    Object? adresse = freezed,
    Object? telephone = freezed,
    Object? email = freezed,
    Object? referenceContrat = freezed,
    Object? texteBasPage = freezed,
    Object? typeMouvement = null,
    Object? nature = freezed,
    Object? categorie = null,
    Object? id = null,
    Object? creeParUtilisateur = null,
    Object? dateCreation = null,
    Object? modifieParUtilisateur = freezed,
    Object? dateModification = freezed,
    Object? actif = null,
  }) {
    return _then(
      _$MandataireImpl(
        zoneId: freezed == zoneId
            ? _value.zoneId
            : zoneId // ignore: cast_nullable_to_non_nullable
                  as String?,
        code: null == code
            ? _value.code
            : code // ignore: cast_nullable_to_non_nullable
                  as String,
        nom: null == nom
            ? _value.nom
            : nom // ignore: cast_nullable_to_non_nullable
                  as String,
        adresse: freezed == adresse
            ? _value.adresse
            : adresse // ignore: cast_nullable_to_non_nullable
                  as String?,
        telephone: freezed == telephone
            ? _value.telephone
            : telephone // ignore: cast_nullable_to_non_nullable
                  as String?,
        email: freezed == email
            ? _value.email
            : email // ignore: cast_nullable_to_non_nullable
                  as String?,
        referenceContrat: freezed == referenceContrat
            ? _value.referenceContrat
            : referenceContrat // ignore: cast_nullable_to_non_nullable
                  as String?,
        texteBasPage: freezed == texteBasPage
            ? _value.texteBasPage
            : texteBasPage // ignore: cast_nullable_to_non_nullable
                  as String?,
        typeMouvement: null == typeMouvement
            ? _value.typeMouvement
            : typeMouvement // ignore: cast_nullable_to_non_nullable
                  as String,
        nature: freezed == nature
            ? _value.nature
            : nature // ignore: cast_nullable_to_non_nullable
                  as String?,
        categorie: null == categorie
            ? _value.categorie
            : categorie // ignore: cast_nullable_to_non_nullable
                  as String,
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        creeParUtilisateur: null == creeParUtilisateur
            ? _value.creeParUtilisateur
            : creeParUtilisateur // ignore: cast_nullable_to_non_nullable
                  as String,
        dateCreation: null == dateCreation
            ? _value.dateCreation
            : dateCreation // ignore: cast_nullable_to_non_nullable
                  as String,
        modifieParUtilisateur: freezed == modifieParUtilisateur
            ? _value.modifieParUtilisateur
            : modifieParUtilisateur // ignore: cast_nullable_to_non_nullable
                  as String?,
        dateModification: freezed == dateModification
            ? _value.dateModification
            : dateModification // ignore: cast_nullable_to_non_nullable
                  as String?,
        actif: null == actif
            ? _value.actif
            : actif // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$MandataireImpl implements _Mandataire {
  const _$MandataireImpl({
    this.zoneId,
    required this.code,
    required this.nom,
    this.adresse,
    this.telephone,
    this.email,
    this.referenceContrat,
    this.texteBasPage,
    required this.typeMouvement,
    this.nature,
    required this.categorie,
    required this.id,
    required this.creeParUtilisateur,
    required this.dateCreation,
    this.modifieParUtilisateur,
    this.dateModification,
    required this.actif,
  });

  factory _$MandataireImpl.fromJson(Map<String, dynamic> json) =>
      _$$MandataireImplFromJson(json);

  @override
  final String? zoneId;
  @override
  final String code;
  @override
  final String nom;
  @override
  final String? adresse;
  @override
  final String? telephone;
  @override
  final String? email;
  @override
  final String? referenceContrat;
  @override
  final String? texteBasPage;
  @override
  final String typeMouvement;
  @override
  final String? nature;
  @override
  final String categorie;
  @override
  final String id;
  @override
  final String creeParUtilisateur;
  @override
  final String dateCreation;
  @override
  final String? modifieParUtilisateur;
  @override
  final String? dateModification;
  @override
  final bool actif;

  @override
  String toString() {
    return 'Mandataire(zoneId: $zoneId, code: $code, nom: $nom, adresse: $adresse, telephone: $telephone, email: $email, referenceContrat: $referenceContrat, texteBasPage: $texteBasPage, typeMouvement: $typeMouvement, nature: $nature, categorie: $categorie, id: $id, creeParUtilisateur: $creeParUtilisateur, dateCreation: $dateCreation, modifieParUtilisateur: $modifieParUtilisateur, dateModification: $dateModification, actif: $actif)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MandataireImpl &&
            (identical(other.zoneId, zoneId) || other.zoneId == zoneId) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.nom, nom) || other.nom == nom) &&
            (identical(other.adresse, adresse) || other.adresse == adresse) &&
            (identical(other.telephone, telephone) ||
                other.telephone == telephone) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.referenceContrat, referenceContrat) ||
                other.referenceContrat == referenceContrat) &&
            (identical(other.texteBasPage, texteBasPage) ||
                other.texteBasPage == texteBasPage) &&
            (identical(other.typeMouvement, typeMouvement) ||
                other.typeMouvement == typeMouvement) &&
            (identical(other.nature, nature) || other.nature == nature) &&
            (identical(other.categorie, categorie) ||
                other.categorie == categorie) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.creeParUtilisateur, creeParUtilisateur) ||
                other.creeParUtilisateur == creeParUtilisateur) &&
            (identical(other.dateCreation, dateCreation) ||
                other.dateCreation == dateCreation) &&
            (identical(other.modifieParUtilisateur, modifieParUtilisateur) ||
                other.modifieParUtilisateur == modifieParUtilisateur) &&
            (identical(other.dateModification, dateModification) ||
                other.dateModification == dateModification) &&
            (identical(other.actif, actif) || other.actif == actif));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    zoneId,
    code,
    nom,
    adresse,
    telephone,
    email,
    referenceContrat,
    texteBasPage,
    typeMouvement,
    nature,
    categorie,
    id,
    creeParUtilisateur,
    dateCreation,
    modifieParUtilisateur,
    dateModification,
    actif,
  );

  /// Create a copy of Mandataire
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MandataireImplCopyWith<_$MandataireImpl> get copyWith =>
      __$$MandataireImplCopyWithImpl<_$MandataireImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MandataireImplToJson(this);
  }
}

abstract class _Mandataire implements Mandataire {
  const factory _Mandataire({
    final String? zoneId,
    required final String code,
    required final String nom,
    final String? adresse,
    final String? telephone,
    final String? email,
    final String? referenceContrat,
    final String? texteBasPage,
    required final String typeMouvement,
    final String? nature,
    required final String categorie,
    required final String id,
    required final String creeParUtilisateur,
    required final String dateCreation,
    final String? modifieParUtilisateur,
    final String? dateModification,
    required final bool actif,
  }) = _$MandataireImpl;

  factory _Mandataire.fromJson(Map<String, dynamic> json) =
      _$MandataireImpl.fromJson;

  @override
  String? get zoneId;
  @override
  String get code;
  @override
  String get nom;
  @override
  String? get adresse;
  @override
  String? get telephone;
  @override
  String? get email;
  @override
  String? get referenceContrat;
  @override
  String? get texteBasPage;
  @override
  String get typeMouvement;
  @override
  String? get nature;
  @override
  String get categorie;
  @override
  String get id;
  @override
  String get creeParUtilisateur;
  @override
  String get dateCreation;
  @override
  String? get modifieParUtilisateur;
  @override
  String? get dateModification;
  @override
  bool get actif;

  /// Create a copy of Mandataire
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MandataireImplCopyWith<_$MandataireImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Profile _$ProfileFromJson(Map<String, dynamic> json) {
  return _Profile.fromJson(json);
}

/// @nodoc
mixin _$Profile {
  String get code => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  List<String> get accesModules => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  String get creeParUtilisateur => throw _privateConstructorUsedError;
  String get dateCreation => throw _privateConstructorUsedError;
  String? get modifieParUtilisateur => throw _privateConstructorUsedError;
  String? get dateModification => throw _privateConstructorUsedError;
  bool get actif => throw _privateConstructorUsedError;

  /// Serializes this Profile to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Profile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProfileCopyWith<Profile> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileCopyWith<$Res> {
  factory $ProfileCopyWith(Profile value, $Res Function(Profile) then) =
      _$ProfileCopyWithImpl<$Res, Profile>;
  @useResult
  $Res call({
    String code,
    String description,
    List<String> accesModules,
    String id,
    String creeParUtilisateur,
    String dateCreation,
    String? modifieParUtilisateur,
    String? dateModification,
    bool actif,
  });
}

/// @nodoc
class _$ProfileCopyWithImpl<$Res, $Val extends Profile>
    implements $ProfileCopyWith<$Res> {
  _$ProfileCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Profile
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? description = null,
    Object? accesModules = null,
    Object? id = null,
    Object? creeParUtilisateur = null,
    Object? dateCreation = null,
    Object? modifieParUtilisateur = freezed,
    Object? dateModification = freezed,
    Object? actif = null,
  }) {
    return _then(
      _value.copyWith(
            code: null == code
                ? _value.code
                : code // ignore: cast_nullable_to_non_nullable
                      as String,
            description: null == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                      as String,
            accesModules: null == accesModules
                ? _value.accesModules
                : accesModules // ignore: cast_nullable_to_non_nullable
                      as List<String>,
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            creeParUtilisateur: null == creeParUtilisateur
                ? _value.creeParUtilisateur
                : creeParUtilisateur // ignore: cast_nullable_to_non_nullable
                      as String,
            dateCreation: null == dateCreation
                ? _value.dateCreation
                : dateCreation // ignore: cast_nullable_to_non_nullable
                      as String,
            modifieParUtilisateur: freezed == modifieParUtilisateur
                ? _value.modifieParUtilisateur
                : modifieParUtilisateur // ignore: cast_nullable_to_non_nullable
                      as String?,
            dateModification: freezed == dateModification
                ? _value.dateModification
                : dateModification // ignore: cast_nullable_to_non_nullable
                      as String?,
            actif: null == actif
                ? _value.actif
                : actif // ignore: cast_nullable_to_non_nullable
                      as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ProfileImplCopyWith<$Res> implements $ProfileCopyWith<$Res> {
  factory _$$ProfileImplCopyWith(
    _$ProfileImpl value,
    $Res Function(_$ProfileImpl) then,
  ) = __$$ProfileImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String code,
    String description,
    List<String> accesModules,
    String id,
    String creeParUtilisateur,
    String dateCreation,
    String? modifieParUtilisateur,
    String? dateModification,
    bool actif,
  });
}

/// @nodoc
class __$$ProfileImplCopyWithImpl<$Res>
    extends _$ProfileCopyWithImpl<$Res, _$ProfileImpl>
    implements _$$ProfileImplCopyWith<$Res> {
  __$$ProfileImplCopyWithImpl(
    _$ProfileImpl _value,
    $Res Function(_$ProfileImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Profile
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? description = null,
    Object? accesModules = null,
    Object? id = null,
    Object? creeParUtilisateur = null,
    Object? dateCreation = null,
    Object? modifieParUtilisateur = freezed,
    Object? dateModification = freezed,
    Object? actif = null,
  }) {
    return _then(
      _$ProfileImpl(
        code: null == code
            ? _value.code
            : code // ignore: cast_nullable_to_non_nullable
                  as String,
        description: null == description
            ? _value.description
            : description // ignore: cast_nullable_to_non_nullable
                  as String,
        accesModules: null == accesModules
            ? _value._accesModules
            : accesModules // ignore: cast_nullable_to_non_nullable
                  as List<String>,
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        creeParUtilisateur: null == creeParUtilisateur
            ? _value.creeParUtilisateur
            : creeParUtilisateur // ignore: cast_nullable_to_non_nullable
                  as String,
        dateCreation: null == dateCreation
            ? _value.dateCreation
            : dateCreation // ignore: cast_nullable_to_non_nullable
                  as String,
        modifieParUtilisateur: freezed == modifieParUtilisateur
            ? _value.modifieParUtilisateur
            : modifieParUtilisateur // ignore: cast_nullable_to_non_nullable
                  as String?,
        dateModification: freezed == dateModification
            ? _value.dateModification
            : dateModification // ignore: cast_nullable_to_non_nullable
                  as String?,
        actif: null == actif
            ? _value.actif
            : actif // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ProfileImpl implements _Profile {
  const _$ProfileImpl({
    required this.code,
    required this.description,
    required final List<String> accesModules,
    required this.id,
    required this.creeParUtilisateur,
    required this.dateCreation,
    this.modifieParUtilisateur,
    this.dateModification,
    required this.actif,
  }) : _accesModules = accesModules;

  factory _$ProfileImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProfileImplFromJson(json);

  @override
  final String code;
  @override
  final String description;
  final List<String> _accesModules;
  @override
  List<String> get accesModules {
    if (_accesModules is EqualUnmodifiableListView) return _accesModules;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_accesModules);
  }

  @override
  final String id;
  @override
  final String creeParUtilisateur;
  @override
  final String dateCreation;
  @override
  final String? modifieParUtilisateur;
  @override
  final String? dateModification;
  @override
  final bool actif;

  @override
  String toString() {
    return 'Profile(code: $code, description: $description, accesModules: $accesModules, id: $id, creeParUtilisateur: $creeParUtilisateur, dateCreation: $dateCreation, modifieParUtilisateur: $modifieParUtilisateur, dateModification: $dateModification, actif: $actif)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(
              other._accesModules,
              _accesModules,
            ) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.creeParUtilisateur, creeParUtilisateur) ||
                other.creeParUtilisateur == creeParUtilisateur) &&
            (identical(other.dateCreation, dateCreation) ||
                other.dateCreation == dateCreation) &&
            (identical(other.modifieParUtilisateur, modifieParUtilisateur) ||
                other.modifieParUtilisateur == modifieParUtilisateur) &&
            (identical(other.dateModification, dateModification) ||
                other.dateModification == dateModification) &&
            (identical(other.actif, actif) || other.actif == actif));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    code,
    description,
    const DeepCollectionEquality().hash(_accesModules),
    id,
    creeParUtilisateur,
    dateCreation,
    modifieParUtilisateur,
    dateModification,
    actif,
  );

  /// Create a copy of Profile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileImplCopyWith<_$ProfileImpl> get copyWith =>
      __$$ProfileImplCopyWithImpl<_$ProfileImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProfileImplToJson(this);
  }
}

abstract class _Profile implements Profile {
  const factory _Profile({
    required final String code,
    required final String description,
    required final List<String> accesModules,
    required final String id,
    required final String creeParUtilisateur,
    required final String dateCreation,
    final String? modifieParUtilisateur,
    final String? dateModification,
    required final bool actif,
  }) = _$ProfileImpl;

  factory _Profile.fromJson(Map<String, dynamic> json) = _$ProfileImpl.fromJson;

  @override
  String get code;
  @override
  String get description;
  @override
  List<String> get accesModules;
  @override
  String get id;
  @override
  String get creeParUtilisateur;
  @override
  String get dateCreation;
  @override
  String? get modifieParUtilisateur;
  @override
  String? get dateModification;
  @override
  bool get actif;

  /// Create a copy of Profile
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProfileImplCopyWith<_$ProfileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserInfo _$UserInfoFromJson(Map<String, dynamic> json) {
  return _UserInfo.fromJson(json);
}

/// @nodoc
mixin _$UserInfo {
  String get email => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  String get role => throw _privateConstructorUsedError;

  /// Serializes this UserInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserInfoCopyWith<UserInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserInfoCopyWith<$Res> {
  factory $UserInfoCopyWith(UserInfo value, $Res Function(UserInfo) then) =
      _$UserInfoCopyWithImpl<$Res, UserInfo>;
  @useResult
  $Res call({String email, String userId, String role});
}

/// @nodoc
class _$UserInfoCopyWithImpl<$Res, $Val extends UserInfo>
    implements $UserInfoCopyWith<$Res> {
  _$UserInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? userId = null,
    Object? role = null,
  }) {
    return _then(
      _value.copyWith(
            email: null == email
                ? _value.email
                : email // ignore: cast_nullable_to_non_nullable
                      as String,
            userId: null == userId
                ? _value.userId
                : userId // ignore: cast_nullable_to_non_nullable
                      as String,
            role: null == role
                ? _value.role
                : role // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$UserInfoImplCopyWith<$Res>
    implements $UserInfoCopyWith<$Res> {
  factory _$$UserInfoImplCopyWith(
    _$UserInfoImpl value,
    $Res Function(_$UserInfoImpl) then,
  ) = __$$UserInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email, String userId, String role});
}

/// @nodoc
class __$$UserInfoImplCopyWithImpl<$Res>
    extends _$UserInfoCopyWithImpl<$Res, _$UserInfoImpl>
    implements _$$UserInfoImplCopyWith<$Res> {
  __$$UserInfoImplCopyWithImpl(
    _$UserInfoImpl _value,
    $Res Function(_$UserInfoImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UserInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? userId = null,
    Object? role = null,
  }) {
    return _then(
      _$UserInfoImpl(
        email: null == email
            ? _value.email
            : email // ignore: cast_nullable_to_non_nullable
                  as String,
        userId: null == userId
            ? _value.userId
            : userId // ignore: cast_nullable_to_non_nullable
                  as String,
        role: null == role
            ? _value.role
            : role // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$UserInfoImpl implements _UserInfo {
  const _$UserInfoImpl({
    required this.email,
    required this.userId,
    required this.role,
  });

  factory _$UserInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserInfoImplFromJson(json);

  @override
  final String email;
  @override
  final String userId;
  @override
  final String role;

  @override
  String toString() {
    return 'UserInfo(email: $email, userId: $userId, role: $role)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserInfoImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.role, role) || other.role == role));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, email, userId, role);

  /// Create a copy of UserInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserInfoImplCopyWith<_$UserInfoImpl> get copyWith =>
      __$$UserInfoImplCopyWithImpl<_$UserInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserInfoImplToJson(this);
  }
}

abstract class _UserInfo implements UserInfo {
  const factory _UserInfo({
    required final String email,
    required final String userId,
    required final String role,
  }) = _$UserInfoImpl;

  factory _UserInfo.fromJson(Map<String, dynamic> json) =
      _$UserInfoImpl.fromJson;

  @override
  String get email;
  @override
  String get userId;
  @override
  String get role;

  /// Create a copy of UserInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserInfoImplCopyWith<_$UserInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
