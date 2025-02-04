import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:projekt_zespolowy_pcz/common/widgets/login_signup/password_field.dart';
import 'package:projekt_zespolowy_pcz/features/authentication/controllers/signup_controller.dart';
import 'package:projekt_zespolowy_pcz/features/authentication/screens/signup/verify_email.dart';
import 'package:projekt_zespolowy_pcz/utils/constants/sizes.dart';
import 'package:projekt_zespolowy_pcz/utils/constants/text_strings.dart';

import '../../../controllers/password_controller.dart';

/// Klasa reprezentująca formularz rejestracji w aplikacji.
class SignupForm extends StatelessWidget {
  // Kontroler zarządzający procesem rejestracji użytkownika
  final SignupController signUpController = Get.put(SignupController());
  // Kontroler tekstowy dla pola hasła
  final TextEditingController passwordTextController;
  SignupForm({super.key, required this.passwordTextController});

  @override
  Widget build(BuildContext context) {
    // Kontroler do zarządzania widocznością hasła
    final PasswordVisibilityController passwordVisibilityController =
        Get.put(PasswordVisibilityController());

    return Form(
      child: Column(
        children: [
          // Pola tekstowe dla imienia i nazwiska
          Row(
            children: [
              Expanded(
                flex: 2,
                child: TextFormField(
                  controller: signUpController.firstNameController,
                  expands: false,
                  decoration: const InputDecoration(
                      labelText: ZenTexts.firstName,
                      prefixIcon: Icon(Icons.person)),
                ),
              ),
              const SizedBox(
                width: ZenSizes.spaceBetweenInputFields,
              ),
              Expanded(
                flex: 2,
                child: TextFormField(
                  controller: signUpController.lastNameController,
                  expands: false,
                  decoration: const InputDecoration(
                      labelText: ZenTexts.lastName,
                      prefixIcon: Icon(Icons.person)),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: ZenSizes.spaceBetweenInputFields,
          ),

          // Pole tekstowe dla e-maila
          TextFormField(
            controller: signUpController.emailController,
            expands: false,
            decoration: const InputDecoration(
                labelText: ZenTexts.email, prefixIcon: Icon(Icons.email)),
          ),

          const SizedBox(
            height: ZenSizes.spaceBetweenInputFields,
          ),

          // Pole tekstowe dla hasła
          PasswordField(
              passwordVisibilityController: passwordVisibilityController,
              passwordController: passwordTextController),

          const SizedBox(
            height: ZenSizes.spaceBetweenInputFields,
          ),

          // Przycisk "Zarejestruj się"
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
                onPressed: () {
                  if (signUpController.validateFields(
                      passwordTextController: passwordTextController)) {
                    // Przejście do ekranu weryfikacji e-maila
                    Get.to(() => const VerifyEmailScreen());
                  }
                },
                child: const Text(ZenTexts.createAccount)),
          )
        ],
      ),
    );
  }
}
