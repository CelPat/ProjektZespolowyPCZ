import 'package:flutter/material.dart';
import 'package:projekt_zespolowy_pcz/features/home/models/meditation.dart';
import 'package:projekt_zespolowy_pcz/utils/constants/sizes.dart';

class MeditationPage extends StatefulWidget {
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
    // Find the meditation by its id
    meditation = meditations
        .firstWhere((meditation) => meditation.id == widget.meditationId);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Image.asset(meditation.labelImage), // Display the labelImage
          const SizedBox(
            height: ZenSizes.spaceBetweenSections,
          ),
          Text(meditation.shortDescription), // Display shortDescription
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(meditation.description), // Display the full description
          ),
        ],
      ),
    );
  }
}
