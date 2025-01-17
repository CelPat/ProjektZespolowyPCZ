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
        body: const Padding(
            padding: EdgeInsets.all(20),
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: ZenSizes.spaceBetweenItems,
            ),
            SizedBox(
                child: Text(
                    'OCD charakteryzuje się natrętnymi myślami (obsesjami) oraz powtarzalnymi zachowaniami lub rytuałami (kompulsjami), które mają na celu złagodzenie niepokoju. Osoby z OCD często czują się zmuszone do wykonywania tych czynności, mimo że są świadome ich irracjonalności.',
                    textAlign: TextAlign.center,)),
            SizedBox(
              height: ZenSizes.spaceBetweenItems,
            ),
            Text('Rekomendacje dotyczące postępowania podczas choroby:',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold),),
              Column(
                children: [
                  Text('\nTerapia poznawczo-behawioralna z elementami ekspozycji i zapobiegania reakcji (ERP).'),
                  Text('\nĆwiczenia mające na celu zmniejszenie lęku, np. techniki mindfulness.'),
                  Text('\nW przypadku ciężkich objawów rozważenie farmakoterapii.'),
                ],
              ),
              Text('\n👉WAŻNE: Z OCD należy zgłosić się do specjalisty, np. psychiatry lub psychoterapeuty. Nie polegaj jedynie na informacjach z tej aplikacji.',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold),)
          ],
        )));
  }
}