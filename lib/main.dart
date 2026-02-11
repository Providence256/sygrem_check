import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:qr_scanner/splash_screen.dart';
import 'package:qr_scanner/theme/app_theme.dart';
import 'package:qr_scanner/utils/provider/theme_notifier.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeDateFormatting('fr_FR', null);
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isdark = ref.watch(themeModeProvider);
    return MaterialApp(
      title: 'Sygrem Check',
      debugShowCheckedModeBanner: false,
      themeMode: isdark ? ThemeMode.dark : ThemeMode.light,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      home: const SplashScreen(),
    );
  }
}
