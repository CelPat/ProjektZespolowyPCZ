import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:projekt_zespolowy_pcz/features/authentication/screens/onboarding/onboarding.dart';
import 'package:projekt_zespolowy_pcz/utils/constants/text_strings.dart';
import 'package:projekt_zespolowy_pcz/utils/theme/theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: ZenTexts.appName,
      themeMode: ThemeMode.system,
      theme: ZenAppTheme.lightTheme,
      darkTheme: ZenAppTheme.darkTheme,
      debugShowCheckedModeBanner: false,
      // initialBinding: GeneralBindings(),
      home: const OnboardingScreen(),
    );
  }
}
