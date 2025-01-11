import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:projekt_zespolowy_pcz/features/authentication/screens/password_config/reset_password.dart';
import 'package:projekt_zespolowy_pcz/utils/constants/sizes.dart';
import 'package:projekt_zespolowy_pcz/utils/constants/text_strings.dart';
import 'package:projekt_zespolowy_pcz/utils/validators/validation.dart';

class ForgotPassword extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(ZenSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Headings
            Text(
              ZenTexts.forgotPasswordTitle,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(
              height: ZenSizes.spaceBetweenItems,
            ),

            Text(
              ZenTexts.forgotPasswordSubTitle,
              style: Theme.of(context).textTheme.labelMedium,
            ),
            const SizedBox(
              height: ZenSizes.spaceBetweenSections,
            ),

            // Email text field
            TextFormField(
              controller: emailController,
              decoration: const InputDecoration(
                  labelText: ZenTexts.email, prefixIcon: Icon(Icons.email)),
            ),

            const SizedBox(
              height: ZenSizes.spaceBetweenSections,
            ),

            // Submit button
            SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {
                      String? emailError = ZenValidator.validateEmail(
                          emailController.text.trim());
                      if (emailError != null) {
                        Get.snackbar('Validation Error', emailError,
                            snackPosition: SnackPosition.TOP);
                      } else {
                        Get.off(() => const ResetPassword());
                      }
                    },
                    child: const Text(ZenTexts.submit)))
          ],
        ),
      ),
    );
  }
}
