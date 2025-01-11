import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:projekt_zespolowy_pcz/common/widgets/login_signup/password_field.dart';
import 'package:projekt_zespolowy_pcz/features/authentication/controllers/signup_controller.dart';
import 'package:projekt_zespolowy_pcz/features/authentication/screens/signup/verify_email.dart';
import 'package:projekt_zespolowy_pcz/utils/constants/sizes.dart';
import 'package:projekt_zespolowy_pcz/utils/constants/text_strings.dart';

import '../../../controllers/password_controller.dart';

class SignupForm extends StatelessWidget {
  final SignupController signUpController = Get.put(SignupController());
  final TextEditingController passwordTextController;
  SignupForm({super.key, required this.passwordTextController});

  @override
  Widget build(BuildContext context) {
    final PasswordVisibilityController passwordVisibilityController =
        Get.put(PasswordVisibilityController());

    return Form(
      child: Column(
        children: [
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

          //Email
          TextFormField(
            controller: signUpController.emailController,
            expands: false,
            decoration: const InputDecoration(
                labelText: ZenTexts.email, prefixIcon: Icon(Icons.email)),
          ),

          const SizedBox(
            height: ZenSizes.spaceBetweenInputFields,
          ),

          PasswordField(
              passwordVisibilityController: passwordVisibilityController,
              passwordController: passwordTextController),

          // Obx(
          //   () => TextFormField(
          //     obscureText: passwordVisibilityController.obscureText,
          //     controller: passwordTextController,
          //     decoration: InputDecoration(
          //       labelText: 'Password',
          //       prefixIcon: GestureDetector(
          //         onTap: passwordVisibilityController.togglePasswordVisibility,
          //         child: Icon(
          //           passwordVisibilityController.isPasswordVisible.value
          //               ? CupertinoIcons.eye
          //               : CupertinoIcons.eye_slash,
          //         ),
          //       ),
          //     ),
          //   ),
          // ),

          const SizedBox(
            height: ZenSizes.spaceBetweenInputFields,
          ),

          //Sign up Button

          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
                onPressed: () {
<<<<<<< HEAD
                  if (controller.validateFields()) {
                    Get.to(() => const VerifyEmailScreen());
                  } else {
                    Get.snackbar(
                      "Error",
                      "You need to enter all the fields.",
                      snackPosition: SnackPosition.TOP,
                    );
=======
                  if (signUpController.validateFields()) {
                    Get.to(() => const VerifyEmailScreen());
>>>>>>> d69244f (Create password controller. Change default password visibility to obscure and add option to show the password by pressing the prefixIcon)
                  }
                },
                child: const Text(ZenTexts.createAccount)),
          )
        ],
      ),
    );
  }
}
