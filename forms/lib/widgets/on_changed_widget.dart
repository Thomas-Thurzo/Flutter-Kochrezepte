import 'package:flutter/material.dart';
import 'package:forms/konstanten.dart';

class OnChangedWidget extends StatefulWidget {
  const OnChangedWidget({super.key});

  @override
  State<OnChangedWidget> createState() => _OnChangedWidgetState();
}

class _OnChangedWidgetState extends State<OnChangedWidget> {
  String textEingabe = "";

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Möglichkeit 1', style: textStyle),
          Text(
            'Die Eingabe aus dem TextField wird über die OnChanged() Methode ausgelesen',
            style: textStyle,
          ),
          SizedBox(height: 50),
          TextField(
            decoration: const InputDecoration(
              label: Text('Bitte etwas eingeben...'),
            ),
            keyboardType: TextInputType.text,
            onChanged: (value) {
              setState(() {
                textEingabe = value;
              });
            },
          ),
          SizedBox(height: 50),
          Text('Textausgabe: $textEingabe ', style: textStyle),
        ],
      ),
    );
  }
}
