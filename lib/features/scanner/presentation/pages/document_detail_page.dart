import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:qr_scanner/features/scanner/presentation/pages/widgets/detail_row_container.dart';

class DocumentDetailPage extends ConsumerWidget {
  final dynamic document;
  final bool isReceipt;

  const DocumentDetailPage({
    super.key,
    required this.document,
    required this.isReceipt,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Détails du Reçu'),
        actions: [
          IconButton(
            icon: const Icon(Icons.share),
            onPressed: () {
              // Logique de partage ici
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Fonctionnalité de partage à venir'),
                ),
              );
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // En-tête avec statut validé
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.green.shade600, Colors.green.shade400],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: Column(
                children: [
                  const Icon(
                    Icons.check_circle_outline,
                    size: 64,
                    color: Colors.white,
                  ),
                  const SizedBox(height: 12),
                  const Text(
                    'Reçu Validé',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'N° REC-2025-BF67}',
                    style: const TextStyle(fontSize: 16, color: Colors.white70),
                  ),
                ],
              ),
            ),

            // Corps du reçu
            Container(
              margin: const EdgeInsets.all(16),
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withValues(alpha: 0.1),
                    blurRadius: 10,
                    spreadRadius: 2,
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Informations du magasin
                  Center(
                    child: Column(
                      children: [
                        Text(
                          'FACTURE DECLARATION',
                          style: const TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 4),
                      ],
                    ),
                  ),

                  const SizedBox(height: 24),
                  Divider(color: Colors.grey.withValues(alpha: 0.5)),
                  const SizedBox(height: 16),

                  DetailRowContainer(
                    title: 'Numero Facture:',
                    subTitle: '00000xx000x0x0x0x',
                  ),

                  const SizedBox(height: 8),

                  DetailRowContainer(
                    title: 'Numero Déclaration',
                    subTitle: 'N/A',
                  ),

                  DetailRowContainer(title: 'Navire', subTitle: 'Test navire'),
                  const SizedBox(height: 8),
                  DetailRowContainer(title: 'Numero OMI', subTitle: '0002'),
                  const SizedBox(height: 8),
                  DetailRowContainer(
                    title: 'Numero voyage',
                    subTitle: 'Xxxxxxxx-xxx',
                  ),
                  const SizedBox(height: 8),
                  DetailRowContainer(
                    title: 'Client',
                    subTitle: 'Xxxxxx - xxxxxx - xxxxxx',
                  ),

                  const SizedBox(height: 16),
                  Divider(color: Colors.grey.withValues(alpha: 0.5)),
                  const SizedBox(height: 16),

                  // Total
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'TOTAL:',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '360\$',
                        style: const TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.green,
                        ),
                      ),
                    ],
                  ),

                  Divider(color: Colors.grey.withValues(alpha: 0.5)),
                ],
              ),
            ),

            // Boutons d'action
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton.icon(
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('Reçu sauvegardé avec succès'),
                            backgroundColor: Colors.green,
                          ),
                        );
                      },
                      icon: const Icon(Icons.file_copy),
                      label: Text(
                        'Voir document',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                        foregroundColor: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(height: 12),
                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: OutlinedButton.icon(
                      onPressed: () {
                        Navigator.popUntil(context, (route) => route.isFirst);
                      },
                      icon: const Icon(Icons.home),
                      label: const Text('Retour à l\'accueil'),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
