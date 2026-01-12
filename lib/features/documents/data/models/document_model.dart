import 'package:freezed_annotation/freezed_annotation.dart';

part 'document_model.freezed.dart';
part 'document_model.g.dart';

@freezed
class QRCodeData with _$QRCodeData {
  const factory QRCodeData({
    required String typeRedevance,
    required String declarationNumero,
    required String dateEmission,
    required String navire,
    required String numeroOmi,
    required String numeroVoyage,
    required String nomClient,
    required String nzela,

    required int retour,

    String? numero,
    int? montant,

    String? agentMaritime,
    String? refLot,
    String? portEmbarquement,
    String? portDebarquement,
    int? poidsDeclare,
  }) = _QRCodeData;

  factory QRCodeData.fromJson(Map<String, dynamic> json) =>
      _$QRCodeDataFromJson(json);
}

@freezed
class SavedData with _$SavedData {
  const factory SavedData({
    required String typeRedevance,
    required String numeroDeclaration,
    required String numero,
    required String navire,
    required String scanUrl,
    required String scanDate,
  }) = _SavedData;

  factory SavedData.fromJson(Map<String, dynamic> json) =>
      _$SavedDataFromJson(json);
}

@freezed
class ReceiptItem with _$ReceiptItem {
  const factory ReceiptItem({
    required String name,
    required int quantity,
    required double price,
  }) = _ReceiptItem;

  factory ReceiptItem.fromJson(Map<String, dynamic> json) =>
      _$ReceiptItemFromJson(json);
}

@freezed
class DeclarationData with _$DeclarationData {
  const factory DeclarationData({
    required String id,
    required String declarationNumber,
    required String title,
    required String description,
    required DateTime date,
    required String status,
    String? pdfUrl,
  }) = _DeclarationData;

  factory DeclarationData.fromJson(Map<String, dynamic> json) =>
      _$DeclarationDataFromJson(json);
}
