import 'package:get/get.dart';

/// Kontroler zarządzający widocznością hasła
/// w aplikacji.
class PasswordVisibilityController extends GetxController {
  // Zmienna przechowująca stan widoczności hasła
  var isPasswordVisible = false.obs;

  /// Funkcja przełączająca stan widoczności hasła
  void togglePasswordVisibility() {
    isPasswordVisible.value = !isPasswordVisible.value;
  }

  /// Getter zwracający wartość określającą,
  /// czy tekst hasła ma być ukryty
  bool get obscureText => !isPasswordVisible.value;
}
