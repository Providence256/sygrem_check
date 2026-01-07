import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:qr_scanner/core/storage/database_helper.dart';
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

    return parseResult.when(
      success: (data) async {
        final dataToSave = SavedData(
          typeRedevance: data.typeRedevance,
          numeroDeclaration: data.declarationNumero,
          numero: data.numero,
          navire: data.navire,
          scanUrl: qrCodeString,
          scanDate: DateTime.now().toIso8601String(),
        );

        final exists = await DatabaseHelper.instance.existsByUrl(qrCodeString);

        if (!exists) {
          await DatabaseHelper.instance.insertFacture(dataToSave);
        }

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

  void reset() {
    state = const AsyncValue.data(null);
  }
}
