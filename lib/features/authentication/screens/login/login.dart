import 'package:flutter/material.dart';
import 'package:projekt_zespolowy_pcz/common/styles/spacing_styles.dart';
import 'package:get/get.dart';

import '../../../../common/widgets/login_signup/form_divider.dart';
import '../../../../common/widgets/login_signup/social_buttons.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/text_strings.dart';
import 'widgets/login_form.dart';
import 'widgets/login_header.dart';

/// Klasa reprezentująca stronę logowania w aplikacji.
class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  // Kontroler tekstowy dla pola użytkownika
  final TextEditingController usernameController = TextEditingController();
  // Kontroler tekstowy dla pola hasła
  final TextEditingController passwordController = TextEditingController();

  // Funkcja obsługująca logowanie użytkownika
  void signUserIn() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: ZenSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              // Nagłówek z logo
              const ZenLoginHeader(),

              // Formularz logowania
              ZenLoginForm(
                passwordTextController: passwordController,
              ),

              // Dzielnik formularza
              ZenFormDivider(
                dividerText: ZenTexts.orSignInWith.capitalize!,
              ),
              const SizedBox(height: ZenSizes.spaceBetweenSections),

              // Przyciski do logowania przez social media
              const ZenSocialButtons()
            ],
          ),
        ),
      ),
    );
  }
}
