import 'package:flutter/material.dart';
import 'package:qr_scanner/features/scanner/presentation/pages/widgets/detail_row_container.dart';

class AttestationContainer extends StatelessWidget {
  const AttestationContainer({super.key});

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

          DetailRowContainer(title: 'Numero:', subTitle: '00000xx000x0x0x0x'),

          const SizedBox(height: 8),

          DetailRowContainer(title: 'Agent Maritime:', subTitle: 'N/A'),

          DetailRowContainer(title: 'Navire:', subTitle: 'Test navire'),
          const SizedBox(height: 8),
          DetailRowContainer(title: 'Numero OMI:', subTitle: '0002'),
          const SizedBox(height: 8),
          DetailRowContainer(title: 'Numero voyage:', subTitle: 'Xxxxxxxx-xxx'),
          const SizedBox(height: 8),
          DetailRowContainer(
            title: 'Port Embarquement:',
            subTitle: 'Xxxxxxxx-xxx',
          ),
          const SizedBox(height: 8),
          DetailRowContainer(
            title: 'Port Dechargement:',
            subTitle: 'Xxxxxxxx-xxx',
          ),
          const SizedBox(height: 8),
          DetailRowContainer(title: 'Poids Déclaré', subTitle: 'Xxxxxxxx-xxx'),
          const SizedBox(height: 8),
          DetailRowContainer(
            title: 'Date Validation:',
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
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(
                '740\$',
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
