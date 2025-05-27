import 'package:flutter/material.dart';
import 'package:hero_widget_beispiel/page_2.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Hero Widget Beispiel')),
      body: ListTile(
        leading: Hero(tag: 'Alarm', child: Icon(Icons.access_alarm, size: 100)),
        title: Text(
          'Bitte auf den Alarm drücken um auf die nächste Seite zu gelangen.',
        ),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Page2()),
          );
        },
      ),
    );
  }
}
