import 'package:flutter/material.dart';
import 'package:projekt_zespolowy_pcz/utils/constants/sizes.dart';
import 'package:projekt_zespolowy_pcz/utils/constants/text_strings.dart';

class fourhtCallName extends StatelessWidget{
  const fourhtCallName({super.key});
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
                child: const Text('116 123')),
            ),
            const SizedBox(
              height: ZenSizes.spaceBetweenItems,
            ),
            const SizedBox(
              child: Text('Bezpłatna infolinia dla dorosłych w kryzysie psychicznym oferuje wsparcie emocjonalne dla osób w trudnych sytuacjach życiowych, ich bliskich oraz profesjonalistów. Pomaga również osobom pokrzywdzonym przestępstwem, w tym ofiarom i świadkom przemocy domowej. Dostępny jest telefon, chat oraz formularz kontaktowy.')
            ),
            const SizedBox(
                    height: ZenSizes.spaceBetweenItems,
                  ),
            const SizedBox(
              child: Text('116sos.pl')
            ),
          ],))
      );
  }
}