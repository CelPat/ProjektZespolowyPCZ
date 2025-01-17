import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:projekt_zespolowy_pcz/features/authentication/screens/password_config/forgot_password.dart';
import 'package:projekt_zespolowy_pcz/navigation_menu.dart';
import '../../../../../common/widgets/login_signup/password_field.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';
import '../../../controllers/password_controller.dart';
import '../../signup/signup.dart';

/// Klasa reprezentująca formularz logowania w aplikacji.
class ZenLoginForm extends StatelessWidget {
  // Kontroler tekstowy dla pola hasła
  final TextEditingController passwordTextController;
  const ZenLoginForm({super.key, required this.passwordTextController});

  @override
  Widget build(BuildContext context) {
    // Kontroler do zarządzania widocznością hasła
    final PasswordVisibilityController passwordVisibilityController =
        Get.put(PasswordVisibilityController());
    
    return Form(
      child: Padding(
        padding:
            const EdgeInsets.symmetric(vertical: ZenSizes.spaceBetweenSections),
        child: Column(
          children: [
            // Pole tekstowe dla e-maila
            TextFormField(
              decoration: const InputDecoration(labelText: ZenTexts.email),
            ),

            const SizedBox(height: ZenSizes.spaceBetweenInputFields),

            // Pole tekstowe dla hasła
            PasswordField(
                passwordVisibilityController: passwordVisibilityController,
                passwordController: passwordTextController),

            const SizedBox(height: ZenSizes.spaceBetweenInputFields / 2),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Checkbox "Zapamiętaj mnie"
                Checkbox(value: true, onChanged: (value) {}),
                const Text(ZenTexts.rememberMe),

                // Przycisk "Zapomniałeś hasła?"
                TextButton(
                    onPressed: () => Get.to(() => ForgotPassword()),
                    child: const Text(ZenTexts.forgotPassword)),
              ],
            ),
            const SizedBox(height: ZenSizes.spaceBetweenSections),

            // Przycisk "Zaloguj się"
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => Get.offAll(() => const NavigationMenu()),
                child: const Text(ZenTexts.signIn),
              ),
            ),
            const SizedBox(height: ZenSizes.spaceBetweenItems),

            // Przycisk "Utwórz konto"
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () => Get.to(() => SignUpScreen()),
                child: const Text(ZenTexts.createAccount),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
