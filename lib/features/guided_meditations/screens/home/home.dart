import 'package:flutter/material.dart';
import 'package:projekt_zespolowy_pcz/features/guided_meditations/screens/home/widgets/home_menu.dart';
import 'package:projekt_zespolowy_pcz/utils/constants/colors.dart';
import 'package:projekt_zespolowy_pcz/utils/constants/image_strings.dart';
import 'package:projekt_zespolowy_pcz/utils/constants/sizes.dart';
import 'package:projekt_zespolowy_pcz/utils/constants/text_strings.dart';

import '../../../../common/styles/spacing_styles.dart';
import '../../models/meditation_types.dart';
import 'widgets/meditation_search_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController searchController = TextEditingController();
  String searchQuery = '';
  MeditationType? selectedType;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ZenColors.light,
      appBar: AppBar(
        title: Text(
          ZenTexts.homeAppbarTitle,
          style: Theme.of(context).textTheme.headlineSmall,
          textAlign: TextAlign.center,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: ZenSizes.defaultSpace),
            child: Image.asset(
              ZenImages.appLogo,
              fit: BoxFit.cover,
              height: ZenSizes.iconXlg,
            ),
          ),
        ],
      ),
      body: Center(
        child: Padding(
          padding: ZenSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              MeditationSearchBar(
                searchController: searchController,
                onTextChanged: (text) {
                  setState(() {
                    searchQuery = text;
                  });
                },
                onSearchSubmitted: (query) {
                  setState(() {
                    searchQuery = query;
                  });
                },
                onFilterPressed: () => showFilterDialog(context),
              ),
              const SizedBox(height: ZenSizes.spaceBetweenSections),
              Expanded(
                child: HomeMenu(
                  searchQuery: searchQuery,
                  selectedType: selectedType,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void showFilterDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Filter by Meditation Type'),
          content: DropdownButton<MeditationType>(
            value: selectedType,
            items: MeditationType.values.map((type) {
              return DropdownMenuItem<MeditationType>(
                value: type,
                child: Text(type.description),
              );
            }).toList(),
            onChanged: (MeditationType? newType) {
              setState(() {
                selectedType = newType;
              });
              Navigator.of(context).pop();
            },
          ),
        );
      },
    );
  }
}
