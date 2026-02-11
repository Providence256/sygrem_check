import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:qr_scanner/core/storage/secure_storage_service.dart';

class ThemeNotifier extends StateNotifier<bool> {
  ThemeNotifier(this._storage) : super(false) {
    _loadTheme();
  }

  final SecureStorageService _storage;
  static const _key = 'is_dark_theme';

  Future<void> _loadTheme() async {
    final saved = await _storage.readBool(_key);
    state = saved ?? false;
  }

  Future<void> toggleTheme() async {
    state = !state;

    await _storage.writeBool(_key, state);
  }
}

final themeModeProvider =
    StateNotifierProvider.autoDispose<ThemeNotifier, bool>((ref) {
      final storage = ref.watch(secureStorageServiceProvider);
      return ThemeNotifier(storage);
    });
