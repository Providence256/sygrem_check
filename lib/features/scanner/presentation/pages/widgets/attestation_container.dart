import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:qr_scanner/features/documents/data/models/document_model.dart';
import 'package:qr_scanner/features/scanner/presentation/pages/widgets/detail_row_container.dart';
import 'package:qr_scanner/utils/provider/date_format_provider.dart';

class AttestationContainer extends ConsumerWidget {
  const AttestationContainer({super.key, required this.document});
  final QRCodeData document;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final formattedDate = ref.watch(
      dateFormatProvider(document.dateEmission ?? 'Non disponible'),
    );
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primaryContainer,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Informations du magasin
          Center(
            child: Column(
              children: [
                Text(
                  'ATTESTATION',
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
            title: 'Numero: ',
            subTitle: document.declarationNumero ?? 'Non disponible',
          ),

          const SizedBox(height: 8),

          DetailRowContainer(
            title: 'Agent Maritime: ',
            subTitle: document.agentMaritime ?? 'Non Disponible',
          ),

          DetailRowContainer(
            title: 'Navire: ',
            subTitle: document.navire ?? 'non disponible',
          ),
          const SizedBox(height: 8),
          DetailRowContainer(
            title: 'Numero OMI: ',
            subTitle: document.numeroOmi ?? 'Non Disponible',
          ),
          const SizedBox(height: 8),
          DetailRowContainer(
            title: 'Numero Lot: ',
            subTitle: document.numeroVoyage ?? 'Non disponible',
          ),
          const SizedBox(height: 8),
          DetailRowContainer(
            title: 'Port Embarquement: ',
            subTitle: document.portEmbarquement ?? 'Non Disponible',
          ),
          const SizedBox(height: 8),
          DetailRowContainer(
            title: 'Port Debarquement: ',
            subTitle: document.portDebarquement ?? 'Non Disponible',
          ),
          const SizedBox(height: 8),
          DetailRowContainer(
            title: 'Poids Déclaré: ',
            subTitle: '${document.poidsDeclare}',
          ),
          const SizedBox(height: 8),
          DetailRowContainer(title: 'Date Emission: ', subTitle: formattedDate),
        ],
      ),
    );
  }
}
