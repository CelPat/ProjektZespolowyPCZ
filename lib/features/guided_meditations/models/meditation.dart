import 'package:flutter/material.dart';
import 'package:projekt_zespolowy_pcz/features/guided_meditations/models/meditation_types.dart';

import '../../../utils/constants/image_strings.dart';

class Meditation {
  final String image;
  final String shortDescription;
  final String description;
  final VoidCallback onTap;
  final MeditationType meditationType;

  Meditation(
      {required this.image,
      required this.shortDescription,
      required this.description,
      required this.onTap,
      required this.meditationType});
}

List<Meditation> meditations = [
  Meditation(
    image: ZenImages.meditation1,
    shortDescription: 'Full-body awareness, calm and relaxing guidance.',
    description:
        'Body Scan Meditation focuses on bringing awareness to each part of your body, helping you relax and release tension. Starting at the top of your head and moving down to your toes, this meditation is perfect for grounding yourself and developing a deeper connection with your physical sensations.',
    onTap: () => print('Kliknięto kafelek 1'),
    meditationType: MeditationType.bodyScan,
  ),
  Meditation(
    image: ZenImages.meditation2,
    shortDescription: 'Voice-guided journey to inner peace.',
    description:
        'Guided Meditation leads you on a soothing journey with the help of a calming voice. This practice is ideal for beginners or those looking for structured relaxation, as it provides step-by-step guidance to help you focus, relax, and find tranquility.',
    onTap: () => print('Kliknięto kafelek 2'),
    meditationType: MeditationType.guidedMeditation,
  ),
  Meditation(
    image: ZenImages.meditation3,
    shortDescription: 'Peaceful stillness in complete silence.',
    description:
        'Silent Meditation offers a serene and uninterrupted space for introspection. Free from distractions, it allows you to focus solely on your breath or personal thoughts, creating an opportunity for deep mindfulness and self-discovery.',
    onTap: () => print('Kliknięto kafelek 3'),
    meditationType: MeditationType.silentMeditation,
  ),
  Meditation(
    image: ZenImages.monk,
    shortDescription: 'Relax deeply with body-focused mindfulness.',
    description:
        'This Body Scan Meditation gently guides your attention through each part of your body. Perfect for stress relief and improving mindfulness, it’s a rejuvenating practice for physical and mental relaxation.',
    onTap: () => print('Kliknięto kafelek 4'),
    meditationType: MeditationType.bodyScan,
  ),
];
