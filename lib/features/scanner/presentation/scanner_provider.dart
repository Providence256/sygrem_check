import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:qr_scanner/core/utils/result.dart';
import 'package:qr_scanner/features/documents/data/models/document_model.dart';
import 'package:qr_scanner/features/documents/data/repository/document_repository.dart';

final scannerNotifierProvider =
    StateNotifierProvider<ScannerNotifier, AsyncValue<dynamic>>((ref) {
      return ScannerNotifier(ref.read(documentRepositoryProvider));
    });

class ScannerNotifier extends StateNotifier<AsyncValue<dynamic>> {
  final DocumentRepository _repository;

  ScannerNotifier(this._repository) : super(const AsyncValue.data(null));

  Future<Result<dynamic>> processQRCode(String qrCodeString) async {
    state = const AsyncValue.loading();

    // Parse QR code
    final parseResult = await _repository.parseQRCode(qrCodeString);

    if (parseResult is! Success<QRCodeData>) {
      state = AsyncValue.error(
        parseResult.errorOrNull ?? 'Failed to parse QR code',
        StackTrace.current,
      );
      return parseResult;
    }

    final qrData = parseResult.dataOrNull! as Map<String, String>;

    // Fetch document based on type
    if (qrData['type'] == 'RECEIPT') {
      final result = await _repository.getReceiptById(qrData['id']!);

      return result.when(
        success: (data) {
          state = AsyncValue.data(data);
          return Result.success(data);
        },
        failure: (message, code) {
          state = AsyncValue.error(message, StackTrace.current);
          return Result.failure(message, code: code);
        },
        loading: () => const Result.loading(),
      );
    } else {
      final result = await _repository.getDeclarationById(qrData['id']!);

      return result.when(
        success: (data) {
          state = AsyncValue.data(data);
          return Result.success(data);
        },
        failure: (message, code) {
          state = AsyncValue.error(message, StackTrace.current);
          return Result.failure(message, code: code);
        },
        loading: () => const Result.loading(),
      );
    }
  }

  void reset() {
    state = const AsyncValue.data(null);
  }
}
