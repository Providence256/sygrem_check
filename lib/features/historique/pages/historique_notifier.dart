import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:qr_scanner/core/storage/database_helper.dart';
import 'package:qr_scanner/features/documents/data/models/document_model.dart';

enum HistoriqueFilter { today, all }

class HistoriqueNotifier extends StateNotifier<AsyncValue<List<SavedData>?>> {
  HistoriqueNotifier() : super(AsyncValue.data(null)) {
    loadHistorique();
  }

  HistoriqueFilter _currentFilter = HistoriqueFilter.today;
  List<SavedData> _allData = [];

  Future<void> loadHistorique() async {
    state = AsyncValue.loading();

    try {
      final data = await DatabaseHelper.instance.getAllFactures();

      _allData = data;
      _applyFilter();
    } catch (e, st) {
      state = AsyncValue.error(e, st);
    }
  }

  void setFilter(HistoriqueFilter filter) {
    _currentFilter = filter;
    _applyFilter();
  }

  void _applyFilter() {
    if (_currentFilter == HistoriqueFilter.all) {
      state = AsyncValue.data(_allData);
    } else {
      final now = DateTime.now();
      final today = DateTime(now.year, now.month, now.day);

      final filteredData = _allData.where((item) {
        try {
          final scanDate = DateTime.parse(item.scanDate);
          final itemDate = DateTime(
            scanDate.year,
            scanDate.month,
            scanDate.day,
          );

          return itemDate.isAtSameMomentAs(today);
        } catch (e) {
          return false;
        }
      }).toList();

      state = AsyncValue.data(filteredData);
    }
  }

  HistoriqueFilter get currentFilter => _currentFilter;
}

final historiqueProvider =
    StateNotifierProvider.autoDispose<
      HistoriqueNotifier,
      AsyncValue<List<SavedData>?>
    >((ref) {
      return HistoriqueNotifier();
    });

final historiqueFilterProvider = Provider<HistoriqueFilter>((ref) {
  return ref.watch(historiqueProvider.notifier).currentFilter;
});
