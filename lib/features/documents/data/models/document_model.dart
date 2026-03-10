import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:qr_scanner/features/documents/data/repository/document_repository.dart';

part 'document_model.freezed.dart';
part 'document_model.g.dart';

@freezed
class QRCodeData with _$QRCodeData {
  const factory QRCodeData({
    required String typeRedevance,
    String? declarationNumero,
    String? dateEmission,
    String? navire,
    String? numeroOmi,
    String? numeroVoyage,
    String? nomClient,
    String? nzela,

    required int retour,

    String? numero,
    int? montant,

    String? agentMaritime,
    String? refLot,
    String? portEmbarquement,
    String? portDebarquement,
    double? poidsDeclare,
  }) = _QRCodeData;

  factory QRCodeData.fromJson(Map<String, dynamic> json) =>
      _$QRCodeDataFromJson(json);
}

@freezed
class SavedData with _$SavedData {
  const factory SavedData({
    required TypeFacture typeFacture,
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
