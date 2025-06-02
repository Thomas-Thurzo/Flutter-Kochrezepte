import 'dart:math';
import 'package:flutter/material.dart';

class GeneratorPage extends StatefulWidget {
  const GeneratorPage({
    super.key,
    required this.minWert,
    required this.maxWert,
  });

  final int minWert;
  final int maxWert;

  @override
  State<GeneratorPage> createState() => _GeneratorPageState();
}

class _GeneratorPageState extends State<GeneratorPage> {
  int zufallsZahl = 0;

  int zufallsZahlErzeugen() {
    return widget.minWert + Random().nextInt(widget.maxWert - widget.minWert);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text('Zufallszahl Generator')),
      body: Center(
        child: Column(
          spacing: 10,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Minimum Wert: ${widget.minWert}',
              style: TextStyle(fontSize: 20),
            ),
            Text(
              'Maximum Wert: ${widget.maxWert}',
              style: TextStyle(fontSize: 20),
            ),
            Text('Zufallszahl: $zufallsZahl', style: TextStyle(fontSize: 20)),

            ElevatedButton(
              onPressed: () {
                setState(() {
                  zufallsZahl = zufallsZahlErzeugen();
                });
              },
              child: Text('Drücken'),
            ),
          ],
        ),
      ),
    );
  }
}
