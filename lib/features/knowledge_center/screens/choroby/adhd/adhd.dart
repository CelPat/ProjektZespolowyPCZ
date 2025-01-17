import 'package:flutter/material.dart';
import 'package:projekt_zespolowy_pcz/utils/constants/sizes.dart';
import 'package:projekt_zespolowy_pcz/utils/constants/text_strings.dart';

/// Klasa reprezentująca stronę aplikacji
/// zawierającą informacje o ADHD.
class AdhdPage extends StatelessWidget{
  const AdhdPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(ZenTexts.adhdButtonName),
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
            // Opis ADHD
            SizedBox(
                child: Text(
                    'ADHD to zaburzenie neurorozwojowe, które objawia się trudnościami z koncentracją, impulsywnością i nadmierną aktywnością. Może występować zarówno u dzieci, jak i dorosłych, wpływając na codzienne funkcjonowanie w szkole, pracy i relacjach międzyludzkich.',
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
                  Text('\nOrganizacja dnia i planowanie zadań w krótkich, łatwych do zarządzania etapach.'),
                  Text('\nWprowadzenie regularnego harmonogramu snu i aktywności fizycznej.'),
                  Text('\nPsychoterapia, szczególnie terapia behawioralna lub coaching dla osób z ADHD.'),
                  Text('\nW niektórych przypadkach skuteczna jest farmakoterapia (np. leki stymulujące lub niestymulujące).')
                ],
              ),
              // Ważna informacja
              Text('\n👉WAŻNE: W przypadku podejrzenia ADHD należy skonsultować się z lekarzem psychiatrą lub psychologiem klinicznym. Nie opieraj się wyłącznie na tej aplikacji.',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold),)
            ],
        )));
  }
}
