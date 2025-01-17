import 'package:flutter/material.dart';

import '../../../../../utils/constants/image_strings.dart';

/// Klasa reprezentująca nagłówek formularza logowania.
class ZenLoginHeader extends StatelessWidget {
  const ZenLoginHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Obrazek logotypu aplikacji
        Image(
          height: 150,
          image: AssetImage(ZenImages.appLogo),
        )
      ],
    );
  }
}
