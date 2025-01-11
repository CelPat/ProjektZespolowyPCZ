import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../features/authentication/controllers/password_controller.dart';

class PasswordField extends StatelessWidget {
  const PasswordField({
    super.key,
    required this.passwordVisibilityController,
    required this.passwordController,
  });

  final PasswordVisibilityController passwordVisibilityController;
  final TextEditingController passwordController;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => TextFormField(
        obscureText: passwordVisibilityController.obscureText,
        controller: passwordController,
        decoration: InputDecoration(
          labelText: 'Password',
          suffixIcon: GestureDetector(
            onTap: passwordVisibilityController.togglePasswordVisibility,
            child: Icon(
              passwordVisibilityController.isPasswordVisible.value
                  ? CupertinoIcons.eye
                  : CupertinoIcons.eye_slash,
            ),
          ),
        ),
      ),
    );
  }
}
