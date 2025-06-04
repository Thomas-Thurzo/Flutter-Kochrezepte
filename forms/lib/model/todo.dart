import 'package:flutter/material.dart';

enum Priority {
  hoch(farbe: Colors.red, beschreibung: 'Hoch'),
  mittel(farbe: Colors.amber, beschreibung: 'Mittel'),
  niedrig(farbe: Colors.green, beschreibung: 'Niedrig');

  const Priority({required this.farbe, required this.beschreibung});

  final Color farbe;
  final String beschreibung;
}

class Todo {
  Todo({
    required this.titel,
    required this.beschreibung,
    required this.priority,
  });

  String titel;
  String beschreibung;
  Priority priority;
}
