import 'package:flutter/material.dart';
import 'package:projekt_zespolowy_pcz/utils/constants/colors.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../models/menu_item.dart';

class HomeMenu extends StatelessWidget {
  HomeMenu({
    super.key,
  });

  final List<MenuItem> items = [
    MenuItem(
      image: ZenImages.meditation1,
      description: 'Opis medytacji Lorem Ipsum',
      onTap: () => print('Kliknięto kafelek 1'),
    ),
    MenuItem(
      image: ZenImages.meditation2,
      description: 'Opis medytacji Lorem Ipsum',
      onTap: () => print('Kliknięto kafelek 2'),
    ),
    MenuItem(
      image: ZenImages.meditation3,
      description: 'Opis medytacji Lorem Ipsum',
      onTap: () => print('Kliknięto kafelek 3'),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        final item = items[index];
        return GestureDetector(
          onTap: item.onTap,
          child: Container(
            margin: const EdgeInsets.symmetric(
              vertical: ZenSizes.defaultSpace / 2,
              horizontal: ZenSizes.defaultSpace,
            ),
            decoration: BoxDecoration(
              color: ZenColors.menuItemBackground,
              borderRadius: BorderRadius.circular(ZenSizes.borderRadiusLg),
            ),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(ZenSizes.defaultSpace),
                  child: Image.asset(
                    item.image,
                    width: 70,
                    height: 70,
                  ),
                ),
                Expanded(
                  child: Text(
                    item.description,
                    style: const TextStyle(
                      fontSize: ZenSizes.fontSizeMd,
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
