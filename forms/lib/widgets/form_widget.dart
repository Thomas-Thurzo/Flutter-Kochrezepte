import 'package:flutter/material.dart';
import 'package:forms/konstanten.dart';
import 'package:forms/model/todo.dart';

class FormWidget extends StatefulWidget {
  const FormWidget({super.key});

  @override
  State<FormWidget> createState() => _FormWidgetState();
}

class _FormWidgetState extends State<FormWidget> {
  final _formGlobalKey = GlobalKey<FormState>();
  String _todoTitel = "";
  String _todoBeschreibung = "";

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Möglichkeit 3', style: textStyle),
          Text(
            'Die Eingabe aus dem TextField wird über ein Form Widget ausgelesen.',
            style: textStyle,
          ),
          SizedBox(height: 50),
          Form(
            key: _formGlobalKey,
            child: Column(
              children: [
                TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Bitte etwas für den Titel eingeben.';
                    }
                    return null;
                  },
                  maxLength: 20,
                  decoration: InputDecoration(label: Text('Todo Titel')),
                  onSaved: (wert) {
                    _todoTitel = wert!;
                  },
                ),
                TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Bitte etwas für die Beschreibung eingeben.';
                    }
                    return null;
                  },
                  maxLength: 20,
                  decoration: InputDecoration(label: Text('Todo Beschreibung')),
                  onSaved: (wert) {
                    _todoBeschreibung = wert!;
                  },
                ),

                DropdownButtonFormField(
                  value: Priority.niedrig,
                  decoration: InputDecoration(
                    label: Text('Priorität der Todos'),
                  ),
                  items: [
                    DropdownMenuItem(
                      value: Priority.hoch,
                      child: Text(Priority.hoch.toString()),
                    ),
                    DropdownMenuItem(
                      value: Priority.mittel,
                      child: Text(Priority.mittel.toString()),
                    ),
                    DropdownMenuItem(
                      value: Priority.niedrig,
                      child: Text(Priority.niedrig.toString()),
                    ),
                  ],
                  onChanged: (value) {},
                ),
                SizedBox(height: 50),
                Text('Text Ausgabe: ', style: textStyle),
                Text('Todo Titel: $_todoTitel', style: textStyle),
                Text('Todo Beschreibung: $_todoBeschreibung', style: textStyle),
                SizedBox(height: 50),

                FilledButton(
                  onPressed: () {
                    if (_formGlobalKey.currentState!.validate()) {
                      _formGlobalKey.currentState!.save();
                      setState(() {});
                    }
                  },
                  style: FilledButton.styleFrom(
                    backgroundColor: Colors.grey[800],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                  child: Text('Hinzufügen'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
