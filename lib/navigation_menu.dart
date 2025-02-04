import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:projekt_zespolowy_pcz/features/help_center/screens/help.dart';
import 'package:projekt_zespolowy_pcz/features/knowledge_center/screens/knowledge.dart';
import 'package:projekt_zespolowy_pcz/features/home/screens/home_page/home.dart';
import 'package:projekt_zespolowy_pcz/utils/constants/colors.dart';
import 'package:projekt_zespolowy_pcz/utils/helpers/helper_functions.dart';

/// Klasa reprezentująca nawigacyjne menu w aplikacji.
class NavigationMenu extends StatelessWidget {
  const NavigationMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // Inicjalizacja kontrolera nawigacji
    final controller = Get.put(NavigationController());
    // Sprawdzenie, czy tryb ciemny jest włączony
    final darkMode = ZenHelperFunctions.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
          height: 80,
          elevation: 0,
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (index) =>
              controller.selectedIndex.value = index,
          backgroundColor: darkMode ? ZenColors.black : Colors.white,
          indicatorColor: darkMode
              ? ZenColors.white.withOpacity(0.1)
              : Colors.black.withOpacity(0.1),
          destinations: const [
            NavigationDestination(icon: Icon(Iconsax.home), label: 'Home'),
            // NavigationDestination(icon: Icon(Iconsax.user), label: 'Profile'),
            NavigationDestination(
                icon: Icon(Icons.phone_enabled), label: 'Help center'),
            NavigationDestination(
                icon: Icon(Iconsax.information), label: 'Knowledge'),
          ],
        ),
      ),
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
    );
  }
}

/// Kontroler zarządzający nawigacją w aplikacji.
class NavigationController extends GetxController {
  // Przechowuje indeks aktualnie wybranej strony
  final Rx<int> selectedIndex = 0.obs;

  // Lista ekranów, między którymi można nawigować
  final screens = [
    const HomePage(),
    // Container(
    //   color: Colors.amberAccent,
    // ),
    const HelpPage(),
    const KnowledgePage()
  ];
}
