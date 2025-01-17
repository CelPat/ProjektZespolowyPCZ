import 'package:flutter/material.dart';
import 'package:projekt_zespolowy_pcz/features/guided_meditations/models/meditation_types.dart';
import 'package:projekt_zespolowy_pcz/utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../models/meditation.dart';

class HomeMenu extends StatefulWidget {
  final String searchQuery;
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
              color: ZenColors.menuItemBackground,
              borderRadius: BorderRadius.circular(ZenSizes.borderRadiusLg),
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(ZenSizes.defaultSpace),
                      child: Image.asset(
                        singleMeditation.image,
                        width: 70,
                        height: 70,
                      ),
                    ),
                    Expanded(
                      child: Text(
                        singleMeditation.shortDescription,
                        style: const TextStyle(
                          fontSize: ZenSizes.fontSizeMd,
                        ),
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
                      style: const TextStyle(fontSize: ZenSizes.fontSizeSm),
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
