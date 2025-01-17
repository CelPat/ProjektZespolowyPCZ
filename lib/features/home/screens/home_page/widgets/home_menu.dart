import 'package:flutter/material.dart';
import 'package:projekt_zespolowy_pcz/features/home/models/meditation_types.dart';
import 'package:projekt_zespolowy_pcz/utils/constants/colors.dart';
import 'package:projekt_zespolowy_pcz/utils/helpers/helper_functions.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../models/meditation.dart';

/// Klasa reprezentująca menu główne z opcjami medytacji.
class HomeMenu extends StatefulWidget {
  // Zapytanie wyszukiwania
  final String searchQuery;
  // Wybrany typ medytacji
  final MeditationType? selectedType;

  const HomeMenu({
    super.key,
    required this.searchQuery,
    this.selectedType,
  });

  @override
  State<HomeMenu> createState() => _HomeMenuState();
}

class _HomeMenuState extends State<HomeMenu> {
  /// Filtrowana lista medytacji na podstawie zapytania wyszukiwania i wybranego typu medytacji.
  List<Meditation> get filteredMeditations {
    return meditations.where((meditation) {
      final matchesQuery = widget.searchQuery.isEmpty ||
          meditation.shortDescription
              .toLowerCase()
              .contains(widget.searchQuery.toLowerCase());
      final matchesType = widget.selectedType == null ||
          meditation.meditationType == widget.selectedType;
      return matchesQuery && matchesType;
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    final isDark = ZenHelperFunctions.isDarkMode(context);
    return ListView.builder(
      itemCount: filteredMeditations.length,
      itemBuilder: (context, index) {
        final singleMeditation = filteredMeditations[index];
        return GestureDetector(
          onTap: singleMeditation.onTap,
          child: Container(
            margin: const EdgeInsets.symmetric(
              vertical: ZenSizes.defaultSpace / 2,
              horizontal: ZenSizes.defaultSpace,
            ),
            decoration: BoxDecoration(
              color: isDark
                  ? ZenColors.menuItemBackgroundDark
                  : ZenColors.menuItemBackgroundLight,
              borderRadius: BorderRadius.circular(ZenSizes.borderRadiusXl),
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(ZenSizes.defaultSpace),
                      child: Image.asset(
                        singleMeditation.labelImage,
                        width: 70,
                        height: 70,
                      ),
                    ),
                    Expanded(
                      child: Text(
                        singleMeditation.shortDescription,
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(ZenSizes.spaceBetweenItems),
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: Text(
                      singleMeditation.meditationType.description,
                      style: Theme.of(context).textTheme.labelSmall,
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
