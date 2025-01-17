import 'package:flutter/material.dart';
import 'package:projekt_zespolowy_pcz/features/guided_meditations/screens/home/widgets/home_menu.dart';
import 'package:projekt_zespolowy_pcz/utils/constants/colors.dart';
import 'package:projekt_zespolowy_pcz/utils/constants/image_strings.dart';
import 'package:projekt_zespolowy_pcz/utils/constants/sizes.dart';
import 'package:projekt_zespolowy_pcz/utils/constants/text_strings.dart';

import '../../../../common/styles/spacing_styles.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
          Image.asset(
            ZenImages.appLogo,
            fit: BoxFit.cover,
            height: ZenSizes.iconXlg,
          ),
        ],
      ),
      body: Center(
        child: Padding(
          padding: ZenSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: ZenSizes.spaceBetweenSections,
              ),
              Expanded(child: HomeMenu()),
            ],
          ),
        ),
      ),
    );
  }
}
