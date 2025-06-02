import 'package:flutter/material.dart';
import 'package:rezo_coder_app/pages/range_auswahl_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Zufalssgenerator',
      debugShowCheckedModeBanner: false,
      home: RangeAuswahlPage(),
    );
  }
}
