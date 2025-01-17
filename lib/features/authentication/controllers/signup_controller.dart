import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:projekt_zespolowy_pcz/utils/popups/loaders.dart';
import 'package:projekt_zespolowy_pcz/utils/validators/validation.dart';

/// Kontroler zarządzający procesem rejestracji użytkownika.
class SignupController extends GetxController {
  // Kontrolery tekstowe do przechowywania wartości wprowadzonych przez użytkownika.
  var firstNameController = TextEditingController();
  var lastNameController = TextEditingController();
  var emailController = TextEditingController();
  late TextEditingController passwordTextController;

  /// Funkcja walidująca pola formularza rejestracji.
  bool validateFields({required passwordTextController}) {
    // Walidacja adresu e-mail.
    String? emailError =
        ZenValidator.validateEmail(emailController.text.trim());
    if (emailError != null) {
      ZenLoaders.warningSnackBar(
          title: "Validation Error", message: emailError);
      return false;
    }

    // Walidacja hasła.
    String? passwordError =
        ZenValidator.validatePassword(passwordTextController.text.trim());
    if (passwordError != null) {
      ZenLoaders.warningSnackBar(
          title: "Validation Error", message: passwordError);
      return false;
    }

    // Sprawdzenie, czy wszystkie pola są wypełnione.
    if (firstNameController.text.trim().isEmpty ||
        lastNameController.text.trim().isEmpty) {
      ZenLoaders.warningSnackBar(
          title: "Error", message: "You need to enter all the fields.");
      return false;
    }
    return true;
  }

  // // Funkcja czyszcząca kontrolery tekstowe.
  // @override
  // void onClose() {
  //   firstNameController.dispose();
  //   lastNameController.dispose();
  //   emailController.dispose();
  //   passwordTextController.dispose();
  //   super.onClose();
  // }
}
