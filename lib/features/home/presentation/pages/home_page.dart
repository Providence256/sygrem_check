import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:qr_scanner/core/constants/app_constants.dart';
import 'package:qr_scanner/features/auth/presentation/auth_provider.dart';
import 'package:qr_scanner/features/auth/presentation/pages/login_page.dart';
import 'package:qr_scanner/features/documents/data/repository/document_repository.dart';
import 'package:qr_scanner/features/scanner/presentation/pages/scanner_page.dart';
import 'package:qr_scanner/utils/provider/theme_notifier.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userName = ref.watch(userNameProvider) ?? 'Utilisateur';

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Theme.of(context).colorScheme.primary.withValues(alpha: 0.05),
              Theme.of(context).colorScheme.secondary.withValues(alpha: 0.05),
            ],
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              _buildHeader(context, ref, userName),
              Expanded(
                child: Center(
                  child: SingleChildScrollView(
                    padding: const EdgeInsets.all(24),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        _buildMainIcon().animate().scale(
                          duration: 600.ms,
                          curve: Curves.elasticOut,
                        ),
                        const SizedBox(height: 26),
                        _buildSubtitleText().animate().fadeIn(
                          delay: 200.ms,
                          duration: 400.ms,
                        ),
                        const SizedBox(height: 32),
                        _buildScanButton(
                          context: context,
                          title: 'Scanner Facture',
                          color: Theme.of(context).colorScheme.primary,
                          onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const QRScannerPage(
                                typeFacture: TypeFacture.declaration,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 15),
                        _buildScanButton(
                          context: context,
                          title: 'Scanner Attestation',
                          color: Theme.of(context).colorScheme.secondary,
                          onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const QRScannerPage(
                                typeFacture: TypeFacture.attestation,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 24),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHeader(BuildContext context, WidgetRef ref, String userName) {
    final isDark = ref.watch(themeModeProvider);
    return Container(
      padding: const EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Bienvenue'),
              Text(
                userName,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Row(
            children: [
              IconButton(
                onPressed: () {
                  ref.read(themeModeProvider.notifier).toggleTheme();
                },
                icon: Icon(isDark ? Icons.dark_mode : Icons.light_mode),
              ),
              IconButton(
                icon: Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.red.withValues(alpha: 0.1),
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(Icons.logout, color: Colors.red),
                ),
                onPressed: () async {
                  final confirm = await showDialog<bool>(
                    context: context,
                    builder: (context) => AlertDialog(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      title: const Text('Se Déconnecter'),
                      content: const Text(
                        'Êtes-vous sûr de vouloir vous déconnecter ?',
                      ),
                      actions: [
                        TextButton(
                          onPressed: () => Navigator.pop(context, false),
                          child: const Text('Annuler'),
                        ),
                        ElevatedButton(
                          onPressed: () => Navigator.pop(context, true),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.red,
                          ),
                          child: const Text(
                            'Déconnecter',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  );

                  if (confirm == true) {
                    await ref.read(authNotifierProvider.notifier).logout();
                    if (context.mounted) {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LoginPage(),
                        ),
                      );
                    }
                  }
                },
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildMainIcon() {
    return Container(
      height: 230,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withValues(alpha: 0.2),
            blurRadius: 10,
            spreadRadius: 5,
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Image.asset(AppConstants.logo, fit: BoxFit.cover),
      ),
    );
  }

  Widget _buildSubtitleText() {
    return Text(
      'Scannez les codes QR pour vérifier les attestations et les factures.',
      style: TextStyle(fontSize: 16, color: Colors.grey[600]),
      textAlign: TextAlign.center,
    );
  }

  Widget _buildScanButton({
    required BuildContext context,
    required String title,
    required VoidCallback onPressed,
    required Color color,
  }) {
    return Container(
      width: double.infinity,
      height: 60,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(16),
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.qr_code_scanner, size: 32),
            const SizedBox(width: 12),
            Text(
              title,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
