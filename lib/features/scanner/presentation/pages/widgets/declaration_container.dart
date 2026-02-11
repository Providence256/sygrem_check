import 'package:flutter/material.dart';
import 'package:qr_scanner/features/documents/data/models/document_model.dart';
import 'package:qr_scanner/features/scanner/presentation/pages/widgets/detail_row_container.dart';

class DeclarationContainer extends StatelessWidget {
  const DeclarationContainer({super.key, required this.document});
  final QRCodeData document;

  @override
  Widget build(BuildContext context) {
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
            subTitle: document.numero!,
          ),

          const SizedBox(height: 8),

          DetailRowContainer(
            title: 'Numero Déclaration:',
            subTitle: document.declarationNumero,
          ),

          DetailRowContainer(title: 'Navire:', subTitle: document.navire),
          const SizedBox(height: 8),
          DetailRowContainer(
            title: 'Numero OMI:',
            subTitle: document.numeroOmi,
          ),
          const SizedBox(height: 8),
          DetailRowContainer(
            title: 'Numero voyage:',
            subTitle: document.numeroVoyage,
          ),
          const SizedBox(height: 8),
          DetailRowContainer(title: 'Client:', subTitle: document.nomClient),

          const SizedBox(height: 16),
          Divider(color: Colors.grey.withValues(alpha: 0.5)),
          const SizedBox(height: 16),

          // Total
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'TOTAL:',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(
                '\$${document.montant}',
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
    );
  }
}
