import 'package:flutter/material.dart';

import '../../../../../utils/constants/sizes.dart';

class MeditationSearchBar extends StatelessWidget {
  final TextEditingController searchController;
  final Function(String) onTextChanged;
  final Function(String) onSearchSubmitted;
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
          borderRadius: BorderRadius.circular(ZenSizes.borderRadiusLg),
        ),
        filled: true,
        fillColor: Colors.white,
      ),
      onChanged: onTextChanged,
      onSubmitted: onSearchSubmitted,
    );
  }
}
