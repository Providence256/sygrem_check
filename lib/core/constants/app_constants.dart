class AppConstants {
  AppConstants._();

  // API
  static const String baseUrl = 'https://africansm-formation.com/';
  static const Duration timeoutDuration = Duration(seconds: 30);

  // Endpoints
  static const String loginEndpoint = 'utilisateur/connecter';
  static const String generateCodeEndpoint = 'auth/generate-code';
  static const String verifyCodeEndpoint = 'auth/verify-code';
  static const String receiptEndpoint = 'receipt';
  static const String declarationEndpoint = 'declaration';

  // Storage Keys
  static const String authTokenKey = 'auth_token';
  static const String userDataKey = 'user_data';
  static const String isLoggedInKey = 'is_logged_in';

  // QR Code
  static const String qrCodePrefix = 'MYAPP';
  static const String secretKey = 'MY_SECRET_APP_KEY_2024';
  static const Duration qrCodeValidityDuration = Duration(hours: 24);

  // Document Types
  static const String typeReceipt = 'RECEIPT';
  static const String typeDeclaration = 'DECLARATION';
}
