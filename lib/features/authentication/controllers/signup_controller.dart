import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:projekt_zespolowy_pcz/utils/popups/loaders.dart';
import 'package:projekt_zespolowy_pcz/utils/validators/validation.dart';

class SignupController extends GetxController {
  var firstNameController = TextEditingController();
  var lastNameController = TextEditingController();
  var emailController = TextEditingController();
  late TextEditingController passwordTextController;

  bool validateFields({required passwordTextController}) {
    String? emailError =
        ZenValidator.validateEmail(emailController.text.trim());
    if (emailError != null) {
      ZenLoaders.warningSnackBar(
          title: "Validation Error", message: emailError);
      return false;
    }

    String? passwordError =
        ZenValidator.validatePassword(passwordTextController.text.trim());
    if (passwordError != null) {
      ZenLoaders.warningSnackBar(
          title: "Validation Error", message: passwordError);
      return false;
    }

    if (firstNameController.text.trim().isEmpty ||
        lastNameController.text.trim().isEmpty) {
      ZenLoaders.warningSnackBar(
          title: "Error", message: "You need to enter all the fields.");
      return false;
    }
    return true;
  }

  // Dispose controllers
  // @override
  // void onClose() {
  //   firstNameController.dispose();
  //   lastNameController.dispose();
  //   emailController.dispose();
  //   passwordTextController.dispose();
  //   super.onClose();
  // }
}
