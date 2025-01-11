import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:projekt_zespolowy_pcz/features/authentication/screens/password_config/forgot_password.dart';
import 'package:projekt_zespolowy_pcz/navigation_menu.dart';
import '../../../../../common/widgets/login_signup/password_field.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';
import '../../../controllers/password_controller.dart';
import '../../signup/signup.dart';

class ZenLoginForm extends StatelessWidget {
  final TextEditingController passwordTextController;
  const ZenLoginForm({super.key, required this.passwordTextController});

  @override
  Widget build(BuildContext context) {
    final PasswordVisibilityController passwordVisibilityController =
        Get.put(PasswordVisibilityController());
    return Form(
      child: Padding(
        padding:
            const EdgeInsets.symmetric(vertical: ZenSizes.spaceBetweenSections),
        child: Column(
          children: [
            // Email
            TextFormField(
              decoration: const InputDecoration(labelText: ZenTexts.email),
            ),

            const SizedBox(height: ZenSizes.spaceBetweenInputFields),

            // Password
            PasswordField(
                passwordVisibilityController: passwordVisibilityController,
                passwordController: passwordTextController),

            const SizedBox(height: ZenSizes.spaceBetweenInputFields / 2),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Remember Me
                Checkbox(value: true, onChanged: (value) {}),
                const Text(ZenTexts.rememberMe),

                // Forgot Password
                TextButton(
                    onPressed: () => Get.to(() => ForgotPassword()),
                    child: const Text(ZenTexts.forgotPassword)),
              ],
            ),
            const SizedBox(height: ZenSizes.spaceBetweenSections),

            // Sign In Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => Get.offAll(() => const NavigationMenu()),
                child: const Text(ZenTexts.signIn),
              ),
            ),
            const SizedBox(height: ZenSizes.spaceBetweenItems),

            // Create account Button
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
