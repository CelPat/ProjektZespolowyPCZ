import 'package:flutter/material.dart';
import 'package:projekt_zespolowy_pcz/utils/constants/sizes.dart';
import 'package:projekt_zespolowy_pcz/utils/constants/text_strings.dart';

class OcdPage extends StatelessWidget{
  const OcdPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(ZenTexts.ocdButtonName),
          centerTitle: true,
          leading: BackButton(
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: const SingleChildScrollView(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: ZenSizes.spaceBetweenItems,
            ),
            const SizedBox(
                child: Text(
                    'OCD charakteryzuje się natrętnymi myślami (obsesjami) oraz powtarzalnymi zachowaniami lub rytuałami (kompulsjami), które mają na celu złagodzenie niepokoju. Osoby z OCD często czują się zmuszone do wykonywania tych czynności, mimo że są świadome ich irracjonalności.')),
            const SizedBox(
              height: ZenSizes.spaceBetweenItems,
            )
          ],
        )));
  }
}