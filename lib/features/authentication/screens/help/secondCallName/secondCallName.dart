import 'package:flutter/material.dart';
import 'package:projekt_zespolowy_pcz/utils/constants/sizes.dart';
import 'package:projekt_zespolowy_pcz/utils/constants/text_strings.dart';

class secondCallName extends StatelessWidget{
  const secondCallName({super.key});
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
              child: Text(ZenTexts.title2)
            ),
            const SizedBox(
                    height: ZenSizes.spaceBetweenItems,
                  ),
            SizedBox(
              child: ElevatedButton(
                onPressed: () {}, 
                child: const Text('116 111')),
            ),
            const SizedBox(
              height: ZenSizes.spaceBetweenItems,
            ),
            const SizedBox(
              child: Text('Telefon ten wspiera dzieci i młodzież w trudnych sytuacjach, umożliwiając rozmowę o ważnych sprawach, problemach, emocjach i doświadczeniach. Można dzwonić w przypadku przemocy, dyskryminacji, problemów rodzinnych, szkolnych, rówieśniczych lub osobistych, a także w chwilach niepokoju czy potrzeby wsparcia.')
            ),
            const SizedBox(
                    height: ZenSizes.spaceBetweenItems,
                  ),
            const SizedBox(
              child: Text('116111.pl')
            ),
          ],))
      );
  }
}