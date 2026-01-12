class AppConstants {
  AppConstants._();

  // API
  static const String baseUrl =
      'https://www.africansm-formation.com/api/sygremcheck/';
  static const Duration timeoutDuration = Duration(seconds: 30);

  // Endpoints
  static const String loginEndpoint = 'connecter';
  static const String generateCodeEndpoint = 'auth/generate-code';
  static const String verifyCodeEndpoint = 'auth/verify-code';
  static const String declarationEndpoint = 'declaration';

  //get document pdf
  static const String getpdfdocument = 'generatepPdfReport';

  static const String getDeclarationQrcodeEndpoint = 'recupererfacture';

  static const String getAttestationQrcodeEndpoint = 'recupererAttestation';

  // Storage Keys
  static const String authTokenKey = 'auth_token';
  static const String userDataKey = 'user_data';
  static const String isLoggedInKey = 'is_logged_in';
  static const String authResponseKey = 'auth_response_key';

  // QR Code
  static const String qrCodePrefix = 'MYAPP';
  static const String secretKey = 'MY_SECRET_APP_KEY_2024';
  static const Duration qrCodeValidityDuration = Duration(hours: 24);

  // Document Types
  static const String typeReceipt = 'RECEIPT';
  static const String typeDeclaration = 'DECLARATION';
}
