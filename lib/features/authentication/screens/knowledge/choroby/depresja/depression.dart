import 'package:flutter/material.dart';
import 'package:projekt_zespolowy_pcz/utils/constants/sizes.dart';
import 'package:projekt_zespolowy_pcz/utils/constants/text_strings.dart';

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
        body: const SingleChildScrollView(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: ZenSizes.spaceBetweenItems,
            ),
            SizedBox(
                child: Text(
                    ' Depresja to jedno z najczęstszych zaburzeń psychicznych, objawiające się przewlekłym obniżeniem nastroju, utratą zainteresowań, brakiem energii, problemami z koncentracją i snem. Często towarzyszą jej myśli samobójcze. Depresja może być wynikiem czynników biologicznych, genetycznych, psychologicznych lub środowiskowych.')),
            SizedBox(
              height: ZenSizes.spaceBetweenItems,
            )
          ],
        )));
  }
}