// Enum reprezentujący różne typy medytacji.
enum MeditationType {
  guidedMeditation, // Medytacja prowadzona
  silentMeditation, // Medytacja w ciszy
  breathingCircle, // Pulsujące koło do oddechu
  breathCounting, // Liczenie oddechów
  bodyScan, // Medytacja skanowania ciała
  visualization, // Wizualizacja
  mindfulness, // Mindfulness
  mantra, // Mantra
  musicMeditation, // Medytacja z muzyką
  dynamicMeditation, // Medytacja dynamiczna
  soundHealing, // Medytacja dźwiękowa
}

// Rozszerzenie dodające opis do każdego typu medytacji.
extension MeditationTypeExtension on MeditationType {
  String get description {
    switch (this) {
      case MeditationType.guidedMeditation:
        return "Guided meditation";
      case MeditationType.silentMeditation:
        return "Silent meditation";
      case MeditationType.breathingCircle:
        return "Breathing Circle";
      case MeditationType.breathCounting:
        return "Breath Counting";
      case MeditationType.bodyScan:
        return "Body scanning";
      case MeditationType.visualization:
        return "Visualization";
      case MeditationType.mindfulness:
        return "Mindfulness";
      case MeditationType.mantra:
        return "Mantra";
      case MeditationType.musicMeditation:
        return "Music Meditation";
      case MeditationType.dynamicMeditation:
        return "Dynamic meditation";
      case MeditationType.soundHealing:
        return "Sound healing";
      default:
        return "Meditation";
    }
  }
}
