import 'package:flutter/material.dart';
import 'package:projekt_zespolowy_pcz/utils/constants/sizes.dart';
import 'package:projekt_zespolowy_pcz/utils/constants/text_strings.dart';

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
        body: const SingleChildScrollView(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: ZenSizes.spaceBetweenItems,
            ),
            SizedBox(
                child: Text(
                    'ADHD to zaburzenie neurorozwojowe, które objawia się trudnościami z koncentracją, impulsywnością i nadmierną aktywnością. Może występować zarówno u dzieci, jak i dorosłych, wpływając na codzienne funkcjonowanie w szkole, pracy i relacjach międzyludzkich.')),
            SizedBox(
              height: ZenSizes.spaceBetweenItems,
            )
            ],
        )));
  }
}