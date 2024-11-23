import 'package:flutter/material.dart';

import '../../../../../utils/constants/image_strings.dart';

class ZenLoginHeader extends StatelessWidget {
  const ZenLoginHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
          height: 150,
          image: AssetImage(ZenImages.appLogo),
        )
      ],
    );
  }
}
