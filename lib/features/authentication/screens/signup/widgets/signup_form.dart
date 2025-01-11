import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:projekt_zespolowy_pcz/features/authentication/controllers/signup_controller.dart';
import 'package:projekt_zespolowy_pcz/features/authentication/screens/signup/verify_email.dart';
import 'package:projekt_zespolowy_pcz/utils/constants/sizes.dart';
import 'package:projekt_zespolowy_pcz/utils/constants/text_strings.dart';

class SignupForm extends StatelessWidget {
  final SignupController controller = Get.put(SignupController());
  SignupForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                flex: 2,
                child: TextFormField(
                  controller: controller.firstNameController,
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
                  controller: controller.lastNameController,
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
            controller: controller.emailController,
            expands: false,
            decoration: const InputDecoration(
                labelText: ZenTexts.email, prefixIcon: Icon(Icons.email)),
          ),

          const SizedBox(
            height: ZenSizes.spaceBetweenInputFields,
          ),

          //Password
          TextFormField(
            controller: controller.passwordController,
            expands: false,
            decoration: const InputDecoration(
                labelText: ZenTexts.password,
                prefixIcon: Icon(CupertinoIcons.eye_slash)),
          ),

          const SizedBox(
            height: ZenSizes.spaceBetweenInputFields,
          ),

          //Sign up Button

          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
                onPressed: () {
                  if (controller.validateFields()) {
                    Get.to(() => const VerifyEmailScreen());
                  } else {
                    Get.snackbar(
                      "Error",
                      "You need to enter all the fields.",
                      snackPosition: SnackPosition.TOP,
                    );
                  }
                },
                child: const Text(ZenTexts.createAccount)),
          )
        ],
      ),
    );
  }
}
