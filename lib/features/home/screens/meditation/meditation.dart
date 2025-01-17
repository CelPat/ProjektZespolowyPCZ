import 'package:flutter/material.dart';
import 'package:projekt_zespolowy_pcz/features/home/models/meditation.dart';
import 'package:projekt_zespolowy_pcz/utils/constants/sizes.dart';

/// Strona wyświetlająca szczegóły wybranej medytacji.
class MeditationPage extends StatefulWidget {
  // Identyfikator medytacji
  final int meditationId;
  const MeditationPage({super.key, required this.meditationId});

  @override
  State<MeditationPage> createState() => _MeditationPageState();
}

class _MeditationPageState extends State<MeditationPage> {
  late Meditation meditation;

  @override
  void initState() {
    super.initState();
    // Znalezienie medytacji po jej identyfikatorze
    meditation = meditations
        .firstWhere((meditation) => meditation.id == widget.meditationId);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: Theme.of(context).iconTheme,
      ),
      body: Column(
        children: [
          // Wyświetlenie obrazka medytacji
          Image.asset(meditation.labelImage),
          const SizedBox(
            height: ZenSizes.spaceBetweenSections,
          ),
          // Wyświetlenie krótkiego opisu medytacji
          Text(meditation.shortDescription),
          // Wyświetlenie pełnego opisu medytacji
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(meditation.description),
          ),
        ],
      ),
    );
  }
}
