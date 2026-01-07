import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:qr_scanner/core/constants/app_colors.dart';
import 'package:qr_scanner/features/auth/presentation/auth_provider.dart';
import 'package:qr_scanner/features/auth/presentation/pages/login_page.dart';
import 'package:qr_scanner/features/scanner/presentation/pages/scanner_page.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authState = ref.watch(authNotifierProvider);
    final userName = authState.value?.user.name ?? 'User';

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              AppColors.primaryColor.withValues(alpha: 0.05),
              AppColors.secondaryColor.withValues(alpha: 0.05),
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
                        const SizedBox(height: 32),
                        _buildWelcomeText(context, userName)
                            .animate()
                            .fadeIn(duration: 400.ms)
                            .slideY(begin: -0.2),
                        const SizedBox(height: 16),
                        _buildSubtitleText().animate().fadeIn(
                          delay: 200.ms,
                          duration: 400.ms,
                        ),
                        const SizedBox(height: 48),
                        _buildScanButton(
                          context,
                        ).animate().fadeIn(delay: 400.ms).slideY(begin: 0.2),
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
    return Container(
      padding: const EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                userName,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                'Prêt à scanner?',
                style: TextStyle(fontSize: 14, color: Colors.grey[600]),
              ),
            ],
          ),
          // IconButton(
          //   icon: Container(
          //     padding: const EdgeInsets.all(8),
          //     decoration: BoxDecoration(
          //       color: Colors.red.withValues(alpha: 0.1),
          //       shape: BoxShape.circle,
          //     ),
          //     child: const Icon(Icons.logout, color: Colors.red),
          //   ),
          //   onPressed: () async {
          //     final confirm = await showDialog<bool>(
          //       context: context,
          //       builder: (context) => AlertDialog(
          //         shape: RoundedRectangleBorder(
          //           borderRadius: BorderRadius.circular(16),
          //         ),
          //         title: const Text('Se Déconnecter'),
          //         content: const Text(
          //           'Êtes-vous sûr de vouloir vous déconnecter ?',
          //         ),
          //         actions: [
          //           TextButton(
          //             onPressed: () => Navigator.pop(context, false),
          //             child: const Text('Annuler'),
          //           ),
          //           ElevatedButton(
          //             onPressed: () => Navigator.pop(context, true),
          //             style: ElevatedButton.styleFrom(
          //               backgroundColor: Colors.red,
          //             ),
          //             child: const Text(
          //               'Déconnecter',
          //               style: TextStyle(
          //                 fontSize: 14,
          //                 fontWeight: FontWeight.bold,
          //               ),
          //             ),
          //           ),
          //         ],
          //       ),
          //     );

          //     if (confirm == true) {
          //       await ref.read(authNotifierProvider.notifier).logout();
          //       if (context.mounted) {
          //         Navigator.pushReplacement(
          //           context,
          //           MaterialPageRoute(builder: (context) => const LoginPage()),
          //         );
          //       }
          //     }
          //   },
          // ),
        ],
      ),
    );
  }

  Widget _buildMainIcon() {
    return Container(
      padding: const EdgeInsets.all(40),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: AppColors.primaryColor,
      ),
      child: const Icon(Icons.qr_code_scanner, size: 100, color: Colors.white),
    );
  }

  Widget _buildWelcomeText(BuildContext context, String userName) {
    return Text(
      'Bienvenue!',
      style: Theme.of(context).textTheme.headlineMedium?.copyWith(
        fontWeight: FontWeight.bold,
        color: AppColors.primaryColor,
      ),
    );
  }

  Widget _buildSubtitleText() {
    return Text(
      'Scannez les codes QR pour vérifier les attestations et les déclarations.',
      style: TextStyle(fontSize: 16, color: Colors.grey[600]),
      textAlign: TextAlign.center,
    );
  }

  Widget _buildScanButton(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 70,
      decoration: BoxDecoration(
        color: AppColors.primaryColor,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: AppColors.primaryColor.withValues(alpha: 0.3),
            blurRadius: 12,
            spreadRadius: 2,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const QRScannerPage()),
          );
        },
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
            const Text(
              'Scanner Code QR',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
