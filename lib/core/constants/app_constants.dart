class AppConstants {
  AppConstants._();

  // formation
  // static const String baseUrl ='https://www.africansm-formation.com/api/sygremcheck/';

  //production
  // static const String baseUrl = 'https://www.sygrem.net/api/sygremcheck/';

  // API
  static const String baseUrl = 'https://www.sygrem.net/api/sygremcheck/';
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

  // Document Types
  static const String typeReceipt = 'RECEIPT';
  static const String typeDeclaration = 'DECLARATION';

  // logo
  static const String logo = 'assets/images/new_logo.png';
  static const String logImg = 'assets/images/sygrem.jpg';
}
