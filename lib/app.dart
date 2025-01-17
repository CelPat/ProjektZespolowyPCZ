import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:projekt_zespolowy_pcz/features/authentication/screens/onboarding/onboarding.dart';
import 'package:projekt_zespolowy_pcz/utils/constants/text_strings.dart';
import 'package:projekt_zespolowy_pcz/utils/theme/theme.dart';

/// Klasa główna aplikacji, która uruchamia Flutterowe GetMaterialApp.
class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      // Tytuł aplikacji
      title: ZenTexts.appName,
      // Tryb tematyczny aplikacji ustawiony na systemowy
      themeMode: ThemeMode.system,
      // Temat jasny aplikacji
      theme: ZenAppTheme.lightTheme,
      // Temat ciemny aplikacji
      darkTheme: ZenAppTheme.darkTheme,
      // Wyłączenie wskaźnika trybu debugowania
      debugShowCheckedModeBanner: false,
      // Początkowy ekran aplikacji
      // initialBinding: GeneralBindings(), // Odkomentuj, jeśli chcesz dodać wiązania
      home: const OnboardingScreen(),
    );
  }
}
