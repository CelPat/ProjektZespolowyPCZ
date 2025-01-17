import 'package:flutter/material.dart';
import 'package:projekt_zespolowy_pcz/utils/constants/colors.dart';

import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/helpers/helper_functions.dart';

/// Klasa reprezentująca pasek wyszukiwania medytacji w aplikacji.
class MeditationSearchBar extends StatelessWidget {
  // Kontroler tekstowy do zarządzania wprowadzanym tekstem wyszukiwania
  final TextEditingController searchController;
  // Funkcja wywoływana przy zmianie tekstu w polu wyszukiwania
  final Function(String) onTextChanged;
  // Funkcja wywoływana przy zatwierdzeniu wyszukiwania
  final Function(String) onSearchSubmitted;
  // Funkcja wywoływana przy kliknięciu przycisku filtrowania
  final VoidCallback onFilterPressed;

  const MeditationSearchBar({
    super.key,
    required this.searchController,
    required this.onTextChanged,
    required this.onSearchSubmitted,
    required this.onFilterPressed,
  });

  @override
  Widget build(BuildContext context) {
    // Sprawdzenie, czy tryb ciemny jest włączony
    final darkMode = ZenHelperFunctions.isDarkMode(context);
    return TextField(
      controller: searchController,
      decoration: InputDecoration(
        prefixIcon: const Icon(Icons.search),
        suffixIcon: IconButton(
          icon: const Icon(Icons.filter_list),
          onPressed: onFilterPressed,
        ),
        hintText: 'Search meditations...',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(ZenSizes.borderRadiusXl),
        ),
        filled: true,
        fillColor: darkMode ? ZenColors.dark : Colors.white,
      ),
      // Wywołanie funkcji przy zmianie tekstu w polu wyszukiwania
      onChanged: onTextChanged,
      // Wywołanie funkcji przy zatwierdzeniu wyszukiwania
      onSubmitted: onSearchSubmitted,
      style: Theme.of(context).textTheme.bodySmall,
    );
  }
}
