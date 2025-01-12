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
        body: const SingleChildScrollView(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: ZenSizes.spaceBetweenItems,
            ),
            SizedBox(
                child: Text(
                    'PTSD występuje po przeżyciu traumatycznych wydarzeń, takich jak wypadki, przemoc lub katastrofy. Objawy obejmują natrętne wspomnienia, koszmary senne, unikanie bodźców przypominających traumę oraz nadmierną czujność.')),
            SizedBox(
              height: ZenSizes.spaceBetweenItems,
            )
          ],
        )));
  }
}