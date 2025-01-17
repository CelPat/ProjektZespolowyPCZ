import 'package:flutter/material.dart';
import 'package:projekt_zespolowy_pcz/utils/constants/sizes.dart';
import 'package:projekt_zespolowy_pcz/utils/constants/text_strings.dart';

/// Klasa reprezentująca stronę aplikacji
/// zawierającą informacje o zaburzeniach lękowych.
class AnxietyPage extends StatelessWidget{
  const AnxietyPage ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(ZenTexts.anxietyButtonName),
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
            // Opis zaburzeń lękowych
            SizedBox(
                child: Text(
                    'Zaburzenia lękowe obejmują przewlekły niepokój, napady paniki, fobie społeczne i inne specyficzne lęki, które mogą znacznie utrudniać codzienne funkcjonowanie. Objawy obejmują szybkie bicie serca, nadmierne pocenie się, trudności w oddychaniu i uporczywe myśli lękowe.',
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
                  Text('\nĆwiczenia relaksacyjne, takie jak medytacja i oddechy przeponowe.'),
                  Text('\nStopniowe narażanie się na sytuacje wywołujące lęk w bezpiecznym otoczeniu (eksperymentalne odczulanie).'),
                  Text('\nOgraniczenie spożywania produktów zawierających kofeinę oraz alkohol.'),
                  Text('\nPsychoterapia, w szczególności terapia poznawczo-behawioralna, oraz ewentualne wsparcie farmakologiczne.')
                ],
              ),
              // Ważna informacja
              Text('\n👉WAŻNE: W przypadku zaburzeń lękowych należy skonsultować się z lekarzem psychiatrą lub psychoterapeutą. Nie opieraj się jedynie na poradach z aplikacji.',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold),)
          ],
        )));
  }
}
