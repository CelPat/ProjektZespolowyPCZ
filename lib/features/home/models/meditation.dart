import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:projekt_zespolowy_pcz/features/home/models/meditation_types.dart';
import 'package:projekt_zespolowy_pcz/features/home/screens/meditation/meditation.dart';

import '../../../utils/constants/image_strings.dart';

/// Klasa reprezentująca medytację z jej właściwościami.
class Meditation {
  final int id; // Unikalne ID medytacji
  final String labelImage; // Ścieżka do obrazka reprezentującego medytację
  final String shortDescription; // Krótki opis medytacji
  final String description; // Pełny opis medytacji
  final VoidCallback onTap; // Funkcja wywoływana po kliknięciu na medytację
  final MeditationType meditationType; // Typ medytacji

  Meditation(
      {required this.id,
      required this.labelImage,
      required this.shortDescription,
      required this.description,
      required this.onTap,
      required this.meditationType});
}

/// Lista dostępnych medytacji.
List<Meditation> meditations = [
  Meditation(
    id: 1,
    labelImage: ZenImages.meditation1,
    shortDescription: 'Full-body awareness, calm and relaxing guidance.',
    description:
        'Body Scan Meditation focuses on bringing awareness to each part of your body, helping you relax and release tension. Starting at the top of your head and moving down to your toes, this meditation is perfect for grounding yourself and developing a deeper connection with your physical sensations.',
    onTap: () => Get.to(() => const MeditationPage(
          meditationId: 1,
        )),
    meditationType: MeditationType.bodyScan,
  ),
  Meditation(
    id: 2,
    labelImage: ZenImages.meditation2,
    shortDescription: 'Voice-guided journey to inner peace.',
    description:
        'Guided Meditation leads you on a soothing journey with the help of a calming voice. This practice is ideal for beginners or those looking for structured relaxation, as it provides step-by-step guidance to help you focus, relax, and find tranquility.',
    onTap: () => Get.to(() => const MeditationPage(
          meditationId: 2,
        )),
    meditationType: MeditationType.guidedMeditation,
  ),
  Meditation(
    id: 3,
    labelImage: ZenImages.meditation3,
    shortDescription: 'Peaceful stillness in complete silence.',
    description:
        'Silent Meditation offers a serene and uninterrupted space for introspection. Free from distractions, it allows you to focus solely on your breath or personal thoughts, creating an opportunity for deep mindfulness and self-discovery.',
    onTap: () => Get.to(() => const MeditationPage(
          meditationId: 3,
        )),
    meditationType: MeditationType.silentMeditation,
  ),
  Meditation(
    id: 4,
    labelImage: ZenImages.monk,
    shortDescription: 'Relax deeply with body-focused mindfulness.',
    description:
        'This Body Scan Meditation gently guides your attention through each part of your body. Perfect for stress relief and improving mindfulness, it’s a rejuvenating practice for physical and mental relaxation.',
    onTap: () => Get.to(() => const MeditationPage(
          meditationId: 4,
        )),
    meditationType: MeditationType.bodyScan,
  ),
];
