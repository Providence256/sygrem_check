// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:qr_scanner/features/documents/data/models/document_model.dart';
import 'package:qr_scanner/features/historique/pages/historique_notifier.dart';

class HistoriqueState {
  final List<SavedData>? data;
  final HistoriqueFilter filter;

  HistoriqueState({required this.data, required this.filter});

  HistoriqueState copyWith({List<SavedData>? data, HistoriqueFilter? filter}) {
    return HistoriqueState(
      data: data ?? this.data,
      filter: filter ?? this.filter,
    );
  }
}
