import 'package:flutter/material.dart';
import 'package:projekt_zespolowy_pcz/utils/constants/sizes.dart';
import 'package:projekt_zespolowy_pcz/utils/constants/text_strings.dart';

/// Klasa reprezentująca stronę aplikacji
/// zawierającą informacje o OCD.
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
        body: const Padding(
            padding: EdgeInsets.all(20),
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Odstęp między elementami
            SizedBox(
              height: ZenSizes.spaceBetweenItems,
            ),
            // Opis OCD
            SizedBox(
                child: Text(
                    'OCD charakteryzuje się natrętnymi myślami (obsesjami) oraz powtarzalnymi zachowaniami lub rytuałami (kompulsjami), które mają na celu złagodzenie niepokoju. Osoby z OCD często czują się zmuszone do wykonywania tych czynności, mimo że są świadome ich irracjonalności.',
                    textAlign: TextAlign.center,)),
            // Odstęp między elementami
            SizedBox(
              height: ZenSizes.spaceBetweenItems,
            ),
            // Nagłówek rekomendacji
            Text('Rekomendacje dotyczące postępowania podczas choroby:',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold),),
              // Lista rekomendacji
              Column(
                children: [
                  Text('\nTerapia poznawczo-behawioralna z elementami ekspozycji i zapobiegania reakcji (ERP).'),
                  Text('\nĆwiczenia mające na celu zmniejszenie lęku, np. techniki mindfulness.'),
                  Text('\nW przypadku ciężkich objawów rozważenie farmakoterapii.'),
                ],
              ),
              // Ważna informacja
              Text('\n👉WAŻNE: Z OCD należy zgłosić się do specjalisty, np. psychiatry lub psychoterapeuty. Nie polegaj jedynie na informacjach z tej aplikacji.',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold),)
          ],
        )));
  }
}
