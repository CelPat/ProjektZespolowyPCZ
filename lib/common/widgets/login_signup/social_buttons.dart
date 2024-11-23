import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/image_strings.dart';
import '../../../utils/constants/sizes.dart';

class GASocialButtons extends StatelessWidget {
  const GASocialButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: ZenColors.grey),
              borderRadius: BorderRadius.circular(100)),
          child: IconButton(
            onPressed: () {},
            icon: const Image(
              width: ZenSizes.iconMd,
              height: ZenSizes.iconMd,
              image: AssetImage(ZenImages.google),
            ),
          ),
        ),
        const SizedBox(width: ZenSizes.spaceBetweenItems),
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: ZenColors.grey),
              borderRadius: BorderRadius.circular(100)),
          child: IconButton(
            onPressed: () {},
            icon: const Image(
              width: ZenSizes.iconMd,
              height: ZenSizes.iconMd,
              image: AssetImage(ZenImages.facebook),
            ),
          ),
        ),
      ],
    );
  }
}
