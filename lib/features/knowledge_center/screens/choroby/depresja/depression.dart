import 'package:flutter/material.dart';
import 'package:projekt_zespolowy_pcz/utils/constants/sizes.dart';
import 'package:projekt_zespolowy_pcz/utils/constants/text_strings.dart';

/// Klasa reprezentująca stronę aplikacji
/// zawierającą informacje o depresji.
class DepressionPage extends StatelessWidget{
  const DepressionPage ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(ZenTexts.depresionButtonName),
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
            // Opis depresji
            SizedBox(
                child: Text(
                    'Depresja to jedno z najczęstszych zaburzeń psychicznych, objawiające się przewlekłym obniżeniem nastroju, utratą zainteresowań, brakiem energii, problemami z koncentracją i snem. Często towarzyszą jej myśli samobójcze. Depresja może być wynikiem czynników biologicznych, genetycznych, psychologicznych lub środowiskowych.',
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
                  Text('\nUdział w psychoterapii, zwłaszcza terapii poznawczo-behawioralnej.'),
                  Text('\nRegularne ćwiczenia fizyczne mogą poprawić nastrój.'),
                  Text('\nUtrzymanie zdrowej diety i regularnego rytmu dnia.'),
                  Text('\nRozmowa z bliskimi i otwarcie na ich wsparcie.'),
                ],
              ),
              // Ważna informacja
              Text('\n👉WAŻNE: Z objawami depresji należy udać się do lekarza specjalisty, np. psychiatry lub psychoterapeuty. Nie należy bazować jedynie na informacjach z tej aplikacji.',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold),)
          ],
        )));
  }
}
