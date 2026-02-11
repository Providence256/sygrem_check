import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:qr_scanner/common/app_header.dart';
import 'package:qr_scanner/core/constants/app_colors.dart';
import 'package:qr_scanner/features/documents/data/models/document_model.dart';
import 'package:qr_scanner/features/historique/pages/historique_notifier.dart';
import 'package:qr_scanner/features/scanner/presentation/pages/document_detail_page.dart';
import 'package:qr_scanner/features/scanner/presentation/scanner_provider.dart';

class HistoriquePage extends ConsumerWidget {
  const HistoriquePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final historiqueState = ref.watch(historiqueProvider);
    final currentFilter = ref.watch(historiqueProvider.notifier).currentFilter;

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
              AppHeader(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FilterButton(
                      label: 'Aujourd\'hui',
                      isSelected: currentFilter == HistoriqueFilter.today,
                      onTap: () {
                        ref
                            .read(historiqueProvider.notifier)
                            .setFilter(HistoriqueFilter.today);
                      },
                    ),
                    const SizedBox(width: 12),
                    FilterButton(
                      label: 'Tout',
                      isSelected: currentFilter == HistoriqueFilter.all,
                      onTap: () {
                        ref
                            .read(historiqueProvider.notifier)
                            .setFilter(HistoriqueFilter.all);
                      },
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Expanded(
                child: historiqueState.when(
                  data: (factures) {
                    return factures == null
                        ? Center(
                            child: Text(
                              currentFilter == HistoriqueFilter.today
                                  ? 'Aucun scan aujourd\'hui'
                                  : 'Aucun scan enregistré',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.grey[600],
                              ),
                            ),
                          )
                        : ListView.builder(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            itemCount: factures.length,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.only(bottom: 12),
                                child: HistoryCard(file: factures[index]),
                              );
                            },
                          );
                  },
                  loading: () =>
                      const Center(child: CircularProgressIndicator()),
                  error: (error, stack) => Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.error_outline,
                          size: 48,
                          color: Colors.red[300],
                        ),
                        const SizedBox(height: 16),
                        Text(
                          'Erreur de chargement',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey[600],
                          ),
                        ),
                        const SizedBox(height: 8),
                        TextButton(
                          onPressed: () {
                            ref
                                .read(historiqueProvider.notifier)
                                .loadHistorique();
                          },
                          child: const Text('Réessayer'),
                        ),
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
}

class FilterButton extends StatelessWidget {
  final String label;
  final bool isSelected;
  final VoidCallback onTap;

  const FilterButton({
    super.key,
    required this.label,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 12),
        decoration: BoxDecoration(
          color: isSelected
              ? Theme.of(context).colorScheme.primary
              : Colors.white,
          borderRadius: BorderRadius.circular(25),
          boxShadow: isSelected
              ? [
                  BoxShadow(
                    color: Theme.of(
                      context,
                    ).colorScheme.primary.withValues(alpha: 0.3),
                    blurRadius: 8,
                    offset: const Offset(0, 2),
                  ),
                ]
              : null,
        ),
        child: Text(
          label,
          style: TextStyle(
            color: isSelected ? Colors.white : Colors.black87,
            fontWeight: FontWeight.w500,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}

class HistoryCard extends ConsumerWidget {
  final SavedData file;

  const HistoryCard({super.key, required this.file});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primaryContainer,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.05),
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            width: 48,
            height: 48,
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primaryContainer,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(
              Icons.qr_code,
              color: Theme.of(context).colorScheme.primary,
              size: 24,
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  file.numero,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Theme.of(context).colorScheme.onSurface,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  file.numeroDeclaration,
                  style: TextStyle(fontSize: 13, color: Colors.grey[500]),
                ),
              ],
            ),
          ),
          const SizedBox(width: 12),
          IconButton(
            icon: const Icon(Icons.remove_red_eye_outlined),
            color: Theme.of(context).colorScheme.onSurface,
            onPressed: () async {
              final notifier = ref.read(scannerNotifierProvider.notifier);

              showDialog(
                context: context,
                barrierDismissible: false,
                builder: (context) =>
                    const Center(child: CircularProgressIndicator()),
              );

              final result = await notifier.processQRCode(
                file.scanUrl,
                file.typeFacture,
              );

              if (context.mounted) {
                Navigator.of(context).pop();
              }

              result.when(
                success: (data) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DocumentDetailPage(
                        document: data,
                        typeFacture: file.typeFacture,
                      ),
                    ),
                  );
                },
                failure: (message, _) {
                  ScaffoldMessenger.of(
                    context,
                  ).showSnackBar(SnackBar(content: Text(message)));
                },
                loading: () => const Center(child: CircularProgressIndicator()),
              );
            },
          ),
        ],
      ),
    );
  }
}
