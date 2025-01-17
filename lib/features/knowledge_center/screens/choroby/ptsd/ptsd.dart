import 'package:flutter/material.dart';
import 'package:projekt_zespolowy_pcz/utils/constants/sizes.dart';
import 'package:projekt_zespolowy_pcz/utils/constants/text_strings.dart';

class PtsdPage extends StatelessWidget{
  const PtsdPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(ZenTexts.ptsdButtonName),
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
                    'PTSD występuje po przeżyciu traumatycznych wydarzeń, takich jak wypadki, przemoc lub katastrofy. Objawy obejmują natrętne wspomnienia, koszmary senne, unikanie bodźców przypominających traumę oraz nadmierną czujność.',
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
                  Text('\nPsychoterapia, zwłaszcza terapia poznawczo-behawioralna ukierunkowana na traumę (TF-CBT) lub terapia EMDR (odwrażliwianie i przetwarzanie za pomocą ruchu gałek ocznych).'),
                  Text('\nTworzenie zdrowego środowiska wsparcia wśród bliskich.'),
                  Text('\nTechniki relaksacyjne i kontrola oddechu w sytuacjach stresowych.')
                ],
              ),
              Text('\n👉WAŻNE: W przypadku PTSD niezbędna jest pomoc specjalisty, takiego jak psychiatra czy psychoterapeuta. Nie polegaj wyłącznie na poradach z tej aplikacji.',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold),)
          ],
        )));
  }
}