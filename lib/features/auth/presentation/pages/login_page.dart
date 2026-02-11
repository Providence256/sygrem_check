import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:qr_scanner/core/constants/app_colors.dart';
import 'package:qr_scanner/core/constants/app_constants.dart';
import 'package:qr_scanner/features/auth/presentation/auth_provider.dart';
import 'package:qr_scanner/main_home_screen.dart';

class LoginPage extends ConsumerStatefulWidget {
  const LoginPage({super.key});

  @override
  ConsumerState<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends ConsumerState<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _verificationCodeController = TextEditingController();

  bool _obscurePassword = true;
  bool _isCodeSent = false;
  bool _isGeneratingCode = false;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _verificationCodeController.dispose();
    super.dispose();
  }

  Future<void> _generateCode() async {
    if (_emailController.text.isEmpty || !_emailController.text.contains('@')) {
      _showSnackBar('Entrer un email valide', isError: true);
      return;
    }

    if (_passwordController.text.isEmpty ||
        _passwordController.text.length < 6) {
      _showSnackBar('Entrer un mot de passe valide', isError: true);
      return;
    }

    setState(() => _isGeneratingCode = true);

    final result = await ref
        .read(authNotifierProvider.notifier)
        .login(_emailController.text, _passwordController.text, '');

    setState(() => _isGeneratingCode = false);

    result.when(
      success: (data) {
        if (data.codeEstEnvoye == true) {
          setState(() => _isCodeSent = true);
          _showSnackBar(
            'Code envoyé ! Consultez votre boîte mail.',
            isSuccess: true,
          );
        } else {
          _showSnackBar(
            'Identifiants incorrects. Vérifiez votre email et mot de passe.',
            isError: true,
            isWarning: true,
          );
        }
      },
      failure: (message, _) {
        _showSnackBar(message, isError: true);
      },
      loading: () {},
    );
  }

  Future<void> _login() async {
    if (!_formKey.currentState!.validate()) return;

    if (_verificationCodeController.text.isEmpty) {
      _showSnackBar('Veuillez entrer le code de vérification', isError: true);
      return;
    }

    final result = await ref
        .read(authNotifierProvider.notifier)
        .login(
          _emailController.text,
          _passwordController.text,
          _verificationCodeController.text,
        );

    result.when(
      success: (data) {
        _showSnackBar('Connexion réussie !', isSuccess: true);
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const MainHomeScreen()),
        );
      },
      failure: (message, _) {
        _showSnackBar(message, isError: true);
      },
      loading: () {},
    );
  }

  void _showSnackBar(
    String message, {
    bool isError = false,
    bool isSuccess = false,
    bool isWarning = false,
  }) {
    Color backgroundColor;
    IconData icon;

    if (isSuccess) {
      backgroundColor = Colors.green;
      icon = Icons.check_circle_outline;
    } else if (isWarning) {
      backgroundColor = Colors.orange;
      icon = Icons.warning_amber_rounded;
    } else if (isError) {
      backgroundColor = Colors.red;
      icon = Icons.error_outline;
    } else {
      backgroundColor = Colors.blue;
      icon = Icons.info_outline;
    }

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Row(
          children: [
            Icon(icon, color: Colors.white),
            const SizedBox(width: 12),
            Expanded(child: Text(message)),
          ],
        ),
        backgroundColor: backgroundColor,
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        duration: const Duration(seconds: 4),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final authState = ref.watch(authNotifierProvider);
    final isLoading = authState.isLoading;

    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AppConstants.logImg),
            fit: BoxFit.fill,
          ),
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              AppColors.primaryColor.withValues(alpha: 0.1),
              AppColors.secondaryColor.withValues(alpha: 0.1),
            ],
          ),
        ),
        child: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(24.0),
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Logo and Title
                    Text(
                      'Bienvenue',
                      style: Theme.of(context).textTheme.headlineLarge
                          ?.copyWith(
                            fontWeight: FontWeight.bold,
                            fontSize: 50,
                            color: Colors.white,
                            shadows: [
                              Shadow(
                                color: Colors.black.withValues(alpha: 0.3),
                                offset: const Offset(0, 2),
                                blurRadius: 8,
                              ),
                            ],
                          ),
                    ),
                    Text(
                      _isCodeSent
                          ? 'Entrez votre code de vérification'
                          : 'Connectez-vous pour Continuer',
                      style: TextStyle(fontSize: 16, color: Colors.grey[700]),
                    ),

                    const SizedBox(height: 24),

                    // Email Field
                    TextFormField(
                      controller: _emailController,
                      keyboardType: TextInputType.emailAddress,
                      style: const TextStyle(fontSize: 16, color: Colors.black),
                      decoration: const InputDecoration(
                        labelText: 'Email',
                        hintText: 'Entrer votre email',
                        prefixIcon: Icon(Icons.email_outlined),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Entrer votre email';
                        }
                        if (!value.contains('@')) {
                          return 'Entrer un email valide';
                        }
                        return null;
                      },
                    ).animate().fadeIn(delay: 400.ms).slideX(begin: -0.2),

                    const SizedBox(height: 16),

                    // Password Field
                    TextFormField(
                      controller: _passwordController,
                      obscureText: _obscurePassword,
                      style: const TextStyle(fontSize: 16, color: Colors.black),
                      decoration: InputDecoration(
                        labelText: 'Mot de Passe',
                        hintText: 'Entrer votre mot de passe',
                        prefixIcon: const Icon(Icons.lock_outline),
                        suffixIcon: IconButton(
                          icon: Icon(
                            _obscurePassword
                                ? Icons.visibility_outlined
                                : Icons.visibility_off_outlined,
                          ),
                          onPressed: () {
                            setState(
                              () => _obscurePassword = !_obscurePassword,
                            );
                          },
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Entrer votre mot de passe';
                        }
                        if (value.length < 6) {
                          return 'Le mot de passe doit contenir au moins 6 caractères';
                        }
                        return null;
                      },
                    ).animate().fadeIn(delay: 500.ms).slideX(begin: -0.2),

                    const SizedBox(height: 16),

                    // Verification Code Field (shown after code is sent)
                    if (_isCodeSent)
                      Column(
                        children: [
                          TextFormField(
                            controller: _verificationCodeController,
                            style: const TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                            ),
                            decoration: const InputDecoration(
                              labelText: 'Code de Vérification',
                              hintText: 'Saisissez le code reçu par mail',
                              prefixIcon: Icon(Icons.verified_user_outlined),
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Entrer votre code de vérification';
                              }
                              return null;
                            },
                          ).animate().fadeIn().slideY(begin: 0.2),
                          const SizedBox(height: 16),
                        ],
                      ),

                    const SizedBox(height: 24),

                    // Generate Code Button
                    if (!_isCodeSent)
                      SizedBox(
                        width: double.infinity,
                        height: 50,
                        child: ElevatedButton.icon(
                          onPressed: _isGeneratingCode ? null : _generateCode,
                          icon: _isGeneratingCode
                              ? const SizedBox(
                                  width: 20,
                                  height: 20,
                                  child: CircularProgressIndicator(
                                    strokeWidth: 2,
                                    color: Colors.white,
                                  ),
                                )
                              : const Icon(Icons.send_outlined),
                          label: Text(
                            _isGeneratingCode
                                ? 'Envoi en cours...'
                                : 'Générer Code',
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppColors.secondaryColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                        ),
                      ).animate().fadeIn(delay: 600.ms).slideY(begin: 0.2),

                    // Sign In Button (shown after code is sent)
                    if (_isCodeSent)
                      Column(
                        children: [
                          SizedBox(
                            width: double.infinity,
                            height: 50,
                            child: ElevatedButton.icon(
                              onPressed: isLoading ? null : _login,
                              icon: isLoading
                                  ? const SizedBox(
                                      width: 20,
                                      height: 20,
                                      child: CircularProgressIndicator(
                                        strokeWidth: 2,
                                        color: Colors.white,
                                      ),
                                    )
                                  : const Icon(Icons.login),
                              label: Text(
                                isLoading ? 'Connexion...' : 'Se connecter',
                                style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
                            ),
                          ).animate().fadeIn().slideY(begin: 0.2),

                          const SizedBox(height: 16),

                          TextButton.icon(
                            onPressed: () {
                              setState(() {
                                _isCodeSent = false;
                                _verificationCodeController.clear();
                              });
                            },
                            icon: const Icon(Icons.arrow_back),
                            label: const Text('Régénérer le code'),
                          ).animate().fadeIn(delay: 200.ms),
                        ],
                      ),

                    const SizedBox(height: 20),

                    // Quick access for users who already have code
                    if (!_isCodeSent)
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text('Vous avez déjà un code ?'),
                          TextButton(
                            onPressed: () {
                              setState(() {
                                _isCodeSent = true;
                              });
                            },
                            child: const Text(
                              'Se connecter',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
