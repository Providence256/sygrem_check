import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:qr_scanner/core/constants/app_colors.dart';
import 'package:qr_scanner/features/scanner/models/pdf_state.dart';
import 'package:qr_scanner/features/scanner/presentation/pdf_state_notifier.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class PDFViewerPage extends ConsumerStatefulWidget {
  final String documentId;

  const PDFViewerPage({super.key, required this.documentId});

  @override
  ConsumerState<PDFViewerPage> createState() => _PDFViewerPageState();
}

class _PDFViewerPageState extends ConsumerState<PDFViewerPage> {
  final PdfViewerController _pdfController = PdfViewerController();
  int _currentPage = 0;
  int _totalPages = 0;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref
          .read(pdfStateNotifierProvider.notifier)
          .generatePdfUrl(widget.documentId);
    });
  }

  @override
  void dispose() {
    _pdfController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final pdfState = ref.watch(pdfStateNotifierProvider);

    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Document PDF'),
            if (_totalPages > 0)
              Text(
                'Page $_currentPage sur $_totalPages',
                style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.normal,
                ),
              ),
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.zoom_in),
            onPressed: () {
              _pdfController.zoomLevel = _pdfController.zoomLevel + 0.25;
            },
          ),
          IconButton(
            icon: const Icon(Icons.zoom_out),
            onPressed: () {
              if (_pdfController.zoomLevel > 1) {
                _pdfController.zoomLevel = _pdfController.zoomLevel - 0.25;
              }
            },
          ),
          PopupMenuButton<String>(
            onSelected: (value) {
              switch (value) {
                case 'download':
                  break;
                case 'share':
                  _sharePDF();
                  break;
                case 'refresh':
                  _refreshPDF();
                  break;
              }
            },
            itemBuilder: (context) => [
              const PopupMenuItem(
                value: 'refresh',
                child: Row(
                  children: [
                    Icon(Icons.refresh),
                    SizedBox(width: 12),
                    Text('Actualiser'),
                  ],
                ),
              ),
              const PopupMenuItem(
                value: 'download',
                child: Row(
                  children: [
                    Icon(Icons.download),
                    SizedBox(width: 12),
                    Text('Télécharger'),
                  ],
                ),
              ),
              const PopupMenuItem(
                value: 'share',
                child: Row(
                  children: [
                    Icon(Icons.share),
                    SizedBox(width: 12),
                    Text('Partager'),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
      body: pdfState.when(
        initial: () => _buildLoadingWidget(),
        loading: () => _buildLoadingWidget(),
        success: (pdfUrl) => _buildPdfViewer(pdfUrl),
        error: (message) => _buildErrorWidget(message),
      ),
      bottomNavigationBar: pdfState.maybeWhen(
        success: (_) => _totalPages > 0 ? _buildBottomNavigation() : null,
        orElse: () => null,
      ),
    );
  }

  Widget _buildLoadingWidget() {
    return Container(
      color: Colors.white,
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CircularProgressIndicator(color: AppColors.primaryColor),
            const SizedBox(height: 16),
            const Text('Chargement du PDF...', style: TextStyle(fontSize: 16)),
          ],
        ),
      ),
    );
  }

  Widget _buildErrorWidget(String message) {
    return Container(
      color: Colors.white,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.error_outline, size: 64, color: Colors.red.shade400),
              const SizedBox(height: 16),
              Text(
                'Erreur de chargement',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.red.shade700,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                message,
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 14, color: Colors.black54),
              ),
              const SizedBox(height: 24),
              ElevatedButton.icon(
                onPressed: _refreshPDF,
                icon: const Icon(Icons.refresh),
                label: const Text('Réessayer'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.primaryColor,
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 24,
                    vertical: 12,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildPdfViewer(String pdfUrl) {
    return Stack(
      children: [
        SfPdfViewer.network(
          pdfUrl,
          controller: _pdfController,
          onDocumentLoaded: (PdfDocumentLoadedDetails details) {
            setState(() {
              _totalPages = details.document.pages.count;
              _currentPage = 1;
            });
          },
          onPageChanged: (PdfPageChangedDetails details) {
            setState(() {
              _currentPage = details.newPageNumber;
            });
          },
          onDocumentLoadFailed: (PdfDocumentLoadFailedDetails details) {
            ref.read(pdfStateNotifierProvider.notifier).state = PdfState.error(
              'Échec du chargement: ${details.error}',
            );
          },
        ),
      ],
    );
  }

  Widget _buildBottomNavigation() {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.1),
            blurRadius: 4,
            offset: const Offset(0, -2),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
            icon: const Icon(Icons.first_page),
            onPressed: _currentPage > 1
                ? () => _pdfController.jumpToPage(1)
                : null,
          ),
          IconButton(
            icon: const Icon(Icons.chevron_left),
            onPressed: _currentPage > 1
                ? () => _pdfController.previousPage()
                : null,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            decoration: BoxDecoration(
              color: AppColors.primaryColor.withValues(alpha: 0.1),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Text(
              '$_currentPage / $_totalPages',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: AppColors.primaryColor,
              ),
            ),
          ),
          IconButton(
            icon: const Icon(Icons.chevron_right),
            onPressed: _currentPage < _totalPages
                ? () => _pdfController.nextPage()
                : null,
          ),
          IconButton(
            icon: const Icon(Icons.last_page),
            onPressed: _currentPage < _totalPages
                ? () => _pdfController.jumpToPage(_totalPages)
                : null,
          ),
        ],
      ),
    );
  }

  void _sharePDF() {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: const Text('Fonctionnalité de partage à venir'),
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      ),
    );
  }

  void _refreshPDF() {
    ref
        .read(pdfStateNotifierProvider.notifier)
        .generatePdfUrl(widget.documentId);
  }
}
