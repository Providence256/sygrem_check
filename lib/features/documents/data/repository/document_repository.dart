import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:path_provider/path_provider.dart';
import 'package:qr_scanner/core/constants/app_constants.dart';
import 'package:qr_scanner/core/network/dio_client.dart';
import 'package:qr_scanner/core/utils/result.dart';
import 'package:qr_scanner/features/documents/data/models/document_model.dart';

final documentRepositoryProvider = Provider<DocumentRepository>((ref) {
  return DocumentRepository(ref.read(dioClientProvider));
});

enum TypeFacture {
  declaration,
  attestation;

  String get endPoint {
    switch (this) {
      case TypeFacture.declaration:
        return AppConstants.getDeclarationQrcodeEndpoint;
      case TypeFacture.attestation:
        return AppConstants.getAttestationQrcodeEndpoint;
    }
  }
}

class DocumentRepository {
  final DioClient _dioClient;

  DocumentRepository(this._dioClient);

  Future<Result<DeclarationData>> getDeclarationById(String id) async {
    try {
      final response = await _dioClient.get(
        '${AppConstants.declarationEndpoint}/$id',
      );

      return Result.success(DeclarationData.fromJson(response.data['data']));
    } on DioException catch (e) {
      return Result.failure(
        e.response?.data['message'] ?? 'Failed to fetch declaration',
        code: e.response?.statusCode.toString(),
      );
    } catch (e) {
      return Result.failure('An unexpected error occurred');
    }
  }

  Future<Result<String>> downloadPDF(
    String id,
    void Function(int, int)? onProgress,
  ) async {
    try {
      final pdfUrl = AppConstants.getpdfdocument;
      final directory = await getApplicationDocumentsDirectory();
      final savePath = '${directory.path}/$id';

      await _dioClient.download(
        pdfUrl,
        savePath,
        onReceiveProgress: onProgress,
      );

      return Result.success(savePath);
    } on DioException catch (e) {
      return Result.failure(
        e.response?.data['message'] ?? 'Failed to download PDF',
        code: e.response?.statusCode.toString(),
      );
    } catch (e) {
      return Result.failure('An unexpected error occurred: ${e.toString()}');
    }
  }

  Future<Result<QRCodeData>> parseQRCode(
    String qrCodeString,
    TypeFacture typeFacture,
  ) async {
    try {
      final response = await _dioClient.get(
        typeFacture.endPoint,
        queryParameters: {"id": qrCodeString},
      );

      if (response.statusCode == 200) {
        final data = response.data as Map<String, dynamic>;

        final qrData = QRCodeData.fromJson(data);

        return Result.success(qrData);
      } else {
        return const Result.failure('Failed to decrypt QR code');
      }
    } catch (e) {
      return Result.failure('Failed to parse QR code: ${e.toString()}');
    }
  }
}
