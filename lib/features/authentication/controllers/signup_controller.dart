import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:projekt_zespolowy_pcz/utils/validators/validation.dart';

class SignupController extends GetxController {
  var firstNameController = TextEditingController();
  var lastNameController = TextEditingController();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  bool validateFields() {
    String? emailError =
        ZenValidator.validateEmail(emailController.text.trim());
    if (emailError != null) {
      Get.snackbar('Validation Error', emailError,
          snackPosition: SnackPosition.TOP);
      return false;
    }

    String? passwordError =
        ZenValidator.validatePassword(passwordController.text.trim());
    if (passwordError != null) {
      Get.snackbar('Validation Error', passwordError,
          snackPosition: SnackPosition.TOP);
      return false;
    }

    if (firstNameController.text.trim().isEmpty ||
        lastNameController.text.trim().isEmpty) {
      Get.snackbar(
        "Error",
        "You need to enter all the fields.",
        snackPosition: SnackPosition.TOP,
      );
      return false;
    }
    return true;
  }

  // Dispose controllers
  @override
  void onClose() {
    firstNameController.dispose();
    lastNameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    super.onClose();
  }
}
