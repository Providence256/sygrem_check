// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'document_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$QRCodeDataImpl _$$QRCodeDataImplFromJson(Map<String, dynamic> json) =>
    _$QRCodeDataImpl(
      typeRedevance: json['typeRedevance'] as String,
      declarationNumero: json['declarationNumero'] as String?,
      dateEmission: json['dateEmission'] as String?,
      navire: json['navire'] as String?,
      numeroOmi: json['numeroOmi'] as String?,
      numeroVoyage: json['numeroVoyage'] as String?,
      nomClient: json['nomClient'] as String?,
      nzela: json['nzela'] as String?,
      retour: (json['retour'] as num).toInt(),
      numero: json['numero'] as String?,
      montant: (json['montant'] as num?)?.toInt(),
      agentMaritime: json['agentMaritime'] as String?,
      refLot: json['refLot'] as String?,
      portEmbarquement: json['portEmbarquement'] as String?,
      portDebarquement: json['portDebarquement'] as String?,
      poidsDeclare: (json['poidsDeclare'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$QRCodeDataImplToJson(_$QRCodeDataImpl instance) =>
    <String, dynamic>{
      'typeRedevance': instance.typeRedevance,
      'declarationNumero': instance.declarationNumero,
      'dateEmission': instance.dateEmission,
      'navire': instance.navire,
      'numeroOmi': instance.numeroOmi,
      'numeroVoyage': instance.numeroVoyage,
      'nomClient': instance.nomClient,
      'nzela': instance.nzela,
      'retour': instance.retour,
      'numero': instance.numero,
      'montant': instance.montant,
      'agentMaritime': instance.agentMaritime,
      'refLot': instance.refLot,
      'portEmbarquement': instance.portEmbarquement,
      'portDebarquement': instance.portDebarquement,
      'poidsDeclare': instance.poidsDeclare,
    };

_$SavedDataImpl _$$SavedDataImplFromJson(Map<String, dynamic> json) =>
    _$SavedDataImpl(
      typeFacture: $enumDecode(_$TypeFactureEnumMap, json['typeFacture']),
      numeroDeclaration: json['numeroDeclaration'] as String,
      numero: json['numero'] as String,
      navire: json['navire'] as String,
      scanUrl: json['scanUrl'] as String,
      scanDate: json['scanDate'] as String,
    );

Map<String, dynamic> _$$SavedDataImplToJson(_$SavedDataImpl instance) =>
    <String, dynamic>{
      'typeFacture': _$TypeFactureEnumMap[instance.typeFacture]!,
      'numeroDeclaration': instance.numeroDeclaration,
      'numero': instance.numero,
      'navire': instance.navire,
      'scanUrl': instance.scanUrl,
      'scanDate': instance.scanDate,
    };

const _$TypeFactureEnumMap = {
  TypeFacture.declaration: 'declaration',
  TypeFacture.attestation: 'attestation',
};

_$ReceiptItemImpl _$$ReceiptItemImplFromJson(Map<String, dynamic> json) =>
    _$ReceiptItemImpl(
      name: json['name'] as String,
      quantity: (json['quantity'] as num).toInt(),
      price: (json['price'] as num).toDouble(),
    );

Map<String, dynamic> _$$ReceiptItemImplToJson(_$ReceiptItemImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'quantity': instance.quantity,
      'price': instance.price,
    };

_$DeclarationDataImpl _$$DeclarationDataImplFromJson(
  Map<String, dynamic> json,
) => _$DeclarationDataImpl(
  id: json['id'] as String,
  declarationNumber: json['declarationNumber'] as String,
  title: json['title'] as String,
  description: json['description'] as String,
  date: DateTime.parse(json['date'] as String),
  status: json['status'] as String,
  pdfUrl: json['pdfUrl'] as String?,
);

Map<String, dynamic> _$$DeclarationDataImplToJson(
  _$DeclarationDataImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'declarationNumber': instance.declarationNumber,
  'title': instance.title,
  'description': instance.description,
  'date': instance.date.toIso8601String(),
  'status': instance.status,
  'pdfUrl': instance.pdfUrl,
};
