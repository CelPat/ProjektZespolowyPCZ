import 'package:flutter/material.dart';
import 'package:projekt_zespolowy_pcz/common/styles/spacing_styles.dart';
import 'package:projekt_zespolowy_pcz/features/authentication/screens/help/fifthCallName/fifthCallName.dart';
import 'package:projekt_zespolowy_pcz/features/authentication/screens/help/firstCallName/firstCallName.dart';
import 'package:projekt_zespolowy_pcz/features/authentication/screens/help/fourthCallName/fourthCallName.dart';
import 'package:projekt_zespolowy_pcz/features/authentication/screens/help/secondCallName/secondCallName.dart';
import 'package:projekt_zespolowy_pcz/features/authentication/screens/help/thirdCallName/thirdCallName.dart';
import 'package:projekt_zespolowy_pcz/utils/constants/image_strings.dart';
import 'package:projekt_zespolowy_pcz/utils/constants/sizes.dart';
import 'package:projekt_zespolowy_pcz/utils/constants/text_strings.dart';

class HelpPage extends StatelessWidget{
  const HelpPage({super.key});
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(padding: ZenSpacingStyle.paddingWithAppBarHeight,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
              Image.asset(
              height: 150,
              ZenImages.helpCenterAnimation,
              fit: BoxFit.cover,
            ),
            const SizedBox(
              height: ZenSizes.spaceBetweenSections,
              ),
              SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const firstCallName())
                        );
                      },
                      child: const Text(ZenTexts.firstCallName),
                    ),
                  ),
                  const SizedBox(
                    height: ZenSizes.spaceBetweenItems,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const secondCallName())
                        );
                      },
                      child: const Text(ZenTexts.secondCallName),
                    ),
                  ),
                  const SizedBox(
                    height: ZenSizes.spaceBetweenItems,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const thirdCallName())
                        );
                      },
                      child: const Text(ZenTexts.thirdCallName),
                    ),
                  ),
                  const SizedBox(
                    height: ZenSizes.spaceBetweenItems,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const fourhtCallName())
                        );
                      },
                      child: const Text(ZenTexts.fourthCallName),
                    ),
                  ),
                  const SizedBox(
                    height: ZenSizes.spaceBetweenItems,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const fifthCallName())
                        );
                      },
                      child: const Text(ZenTexts.fifthCallName),
                    ),
                  ),
          ],
          ),
        ),
      ),
     );
  }
}