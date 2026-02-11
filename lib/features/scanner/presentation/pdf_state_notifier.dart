import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:qr_scanner/features/documents/data/repository/document_repository.dart';
import 'package:qr_scanner/features/scanner/models/pdf_state.dart';

class PdfStateNotifier extends StateNotifier<PdfState> {
  PdfStateNotifier(this._repository) : super(PdfState.initial());

  final DocumentRepository _repository;

  Future<void> generatePdfUrl(String documentId) async {
    if (documentId.isEmpty) {
      state = PdfState.error('Document ID is required');
      return;
    }

    state = PdfState.loading();

    final result = await _repository.getPdfUrl(documentId);
    state = result.when(
      success: (pdfBytes) => PdfState.success(pdfBytes),
      failure: (message, code) => PdfState.error(message),

      loading: () => const PdfState.loading(),
    );
  }
}

final pdfStateNotifierProvider =
    StateNotifierProvider.autoDispose<PdfStateNotifier, PdfState>((ref) {
      final repository = ref.watch(documentRepositoryProvider);
      return PdfStateNotifier(repository);
    });
