import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
<<<<<<< HEAD
import 'package:projekt_zespolowy_pcz/features/authentication/screens/signup/signup.dart';
=======
import 'package:get/get_core/src/get_main.dart';
import 'package:projekt_zespolowy_pcz/features/authentication/screens/home/home.dart';
>>>>>>> ac293054ee9e2488c4d4f5406f973786174e6633

import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';

class ZenLoginForm extends StatelessWidget {
  const ZenLoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
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
            TextFormField(
              decoration: const InputDecoration(
                  labelText: ZenTexts.password,
                  suffixIcon: Icon(CupertinoIcons.eye_slash_fill)),
            ),
            const SizedBox(height: ZenSizes.spaceBetweenInputFields / 2),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Remember Me
                Checkbox(value: true, onChanged: (value) {}),
                const Text(ZenTexts.rememberMe),

                // Forgot Password
                TextButton(
                    onPressed: () {},
                    child: const Text(ZenTexts.forgotPassword)),
              ],
            ),
            const SizedBox(height: ZenSizes.spaceBetweenSections),

            // Sign In Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: 
                  () => Get.offAll(() => const HomePage())
                ,
                child: const Text(ZenTexts.signIn),
              ),
            ),
            const SizedBox(height: ZenSizes.spaceBetweenItems),

            // Create account Button
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () => Get.to(() => const SignUpScreen()),
                child: const Text(ZenTexts.createAccount),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
