import 'package:flutter/material.dart';
import 'package:projekt_zespolowy_pcz/utils/constants/sizes.dart';
import 'package:projekt_zespolowy_pcz/utils/constants/text_strings.dart';

class firstCallName extends StatelessWidget{
  const firstCallName({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
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
            const SizedBox(
              child: Text(ZenTexts.title1)
            ),
            const SizedBox(
                    height: ZenSizes.spaceBetweenItems,
                  ),
            SizedBox(
              child: ElevatedButton(
                onPressed: () {}, 
                child: const Text('800 12 12 12')),
            ),
            const SizedBox(
              height: ZenSizes.spaceBetweenItems,
            ),
            const SizedBox(
              child: Text('Pod tym numerem dzieci, rodzice i opiekunowie mogą uzyskać wsparcie psychologiczne i prawne. Dorośli mogą zgłaszać problemy dzieci lub zaniedbania. Najczęściej poruszane są sprawy przemocy, problemów emocjonalnych, relacji rówieśniczych, szkolnych i rodzinnych. Dostępny jest także całodobowy chat.')
            ),
            const SizedBox(
                    height: ZenSizes.spaceBetweenItems,
                  ),
            const SizedBox(
              child: Text('800121212.pl')
            ),    
          ],))
      );
  }
}