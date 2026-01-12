import 'package:flutter/material.dart';
import 'package:qr_scanner/features/documents/data/models/document_model.dart';
import 'package:qr_scanner/features/scanner/presentation/pages/widgets/detail_row_container.dart';

class AttestationContainer extends StatelessWidget {
  const AttestationContainer({super.key, required this.document});
  final QRCodeData document;

  @override
  Widget build(BuildContext context) {
    return Container(
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
            title: 'Numero:',
            subTitle: document.declarationNumero,
          ),

          const SizedBox(height: 8),

          DetailRowContainer(
            title: 'Agent Maritime:',
            subTitle: document.agentMaritime!,
          ),

          DetailRowContainer(title: 'Navire:', subTitle: document.navire),
          const SizedBox(height: 8),
          DetailRowContainer(
            title: 'Numero OMI:',
            subTitle: document.numeroOmi,
          ),
          const SizedBox(height: 8),
          DetailRowContainer(
            title: 'Numero Lot:',
            subTitle: document.numeroVoyage,
          ),
          const SizedBox(height: 8),
          DetailRowContainer(
            title: 'Port Embarquement:',
            subTitle: document.portEmbarquement!,
          ),
          const SizedBox(height: 8),
          DetailRowContainer(
            title: 'Port Debarquement:',
            subTitle: document.portDebarquement!,
          ),
          const SizedBox(height: 8),
          DetailRowContainer(
            title: 'Poids Déclaré',
            subTitle: '${document.poidsDeclare}',
          ),
          const SizedBox(height: 8),
          DetailRowContainer(
            title: 'Date Emission:',
            subTitle: document.dateEmission,
          ),
        ],
      ),
    );
  }
}
