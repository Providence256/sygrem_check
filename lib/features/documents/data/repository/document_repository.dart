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

class DocumentRepository {
  final DioClient _dioClient;

  DocumentRepository(this._dioClient);

  Future<Result<ReceiptData>> getReceiptById(String id) async {
    try {
      final response = await _dioClient.get(
        '${AppConstants.receiptEndpoint}/$id',
      );

      return Result.success(ReceiptData.fromJson(response.data['data']));
    } on DioException catch (e) {
      return Result.failure(
        e.response?.data['message'] ?? 'Failed to fetch receipt',
        code: e.response?.statusCode.toString(),
      );
    } catch (e) {
      return Result.failure('An unexpected error occurred');
    }
  }

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
    String pdfUrl,
    String filename,
    void Function(int, int)? onProgress,
  ) async {
    try {
      final directory = await getApplicationDocumentsDirectory();
      final savePath = '${directory.path}/$filename';

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

  Future<Result<QRCodeData>> parseQRCode(String qrCodeString) async {
    try {
      // Parse QR code format: TYPE|ID|TIMESTAMP
      final parts = qrCodeString.split('|');

      if (parts.length < 2) {
        return const Result.failure('Invalid QR code format');
      }

      final type = parts[0];
      final id = parts[1];
      final timestamp = parts.length > 2 ? int.tryParse(parts[2]) : null;

      if (type != AppConstants.typeReceipt &&
          type != AppConstants.typeDeclaration) {
        return const Result.failure('Unknown document type');
      }

      return Result.success(
        QRCodeData(type: type, id: id, timestamp: timestamp),
      );
    } catch (e) {
      return Result.failure('Failed to parse QR code: ${e.toString()}');
    }
  }
}
