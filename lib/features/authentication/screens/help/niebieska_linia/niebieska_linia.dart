import 'package:flutter/material.dart';
import 'package:projekt_zespolowy_pcz/utils/constants/sizes.dart';
import 'package:projekt_zespolowy_pcz/utils/constants/text_strings.dart';

class NiebieskaLinia extends StatelessWidget {
  const NiebieskaLinia({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: BackButton(
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: SingleChildScrollView(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(child: Text(ZenTexts.dzieciecyTelefonZaufaniaTitle)),
            const SizedBox(
              height: ZenSizes.spaceBetweenItems,
            ),
            SizedBox(
              child: ElevatedButton(
                  onPressed: () {}, child: const Text('800 120 002')),
            ),
            const SizedBox(
              height: ZenSizes.spaceBetweenItems,
            ),
            const SizedBox(
                child: Text(
                    'Bezpłatna, całodobowa infolinia oferująca wsparcie i informacje dla osób doświadczających przemocy domowej. Pod tym numerem można uzyskać pomoc psychologiczną, prawną oraz informacje o miejscach oferujących wsparcie dla osób dotkniętych przemocą w rodzinie.')),
            const SizedBox(
              height: ZenSizes.spaceBetweenItems,
            ),
            const SizedBox(child: Text('www.niebieskalinia.info')),
          ],
        )));
  }
}
