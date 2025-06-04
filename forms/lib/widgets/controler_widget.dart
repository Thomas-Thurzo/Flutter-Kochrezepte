import 'package:flutter/material.dart';
import 'package:forms/konstanten.dart';

class ControlerWidget extends StatefulWidget {
  const ControlerWidget({super.key});

  @override
  State<ControlerWidget> createState() => _ControlerWidgetState();
}

class _ControlerWidgetState extends State<ControlerWidget> {
  final TextEditingController textController = TextEditingController();
  String textEingabe = "";

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Möglichkeit 2', style: textStyle),
          Text(
            'Die Eingabe aus dem TextField wird über einen Controller ausgelesen.',
            style: textStyle,
          ),
          SizedBox(height: 50),
          TextField(
            controller: textController,
            decoration: const InputDecoration(
              label: Text('Bitte etwas eingeben...'),
            ),
            keyboardType: TextInputType.text,
          ),
          SizedBox(height: 50),
          Text('Textausgabe: $textEingabe', style: textStyle),
          SizedBox(height: 50),
          FilledButton(
            onPressed: () {
              setState(() {
                textEingabe = textController.text;
              });
            },
            child: Text('Text ausgeben'),
          ),
          FilledButton(
            onPressed: () {
              setState(() {
                textEingabe = "";
                textController.clear();
              });
            },
            child: Text('Textfeld löschen'),
          ),
        ],
      ),
    );
  }
}
