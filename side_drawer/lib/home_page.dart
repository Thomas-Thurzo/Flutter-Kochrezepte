import 'package:flutter/material.dart';
import 'package:side_drawer/page_1.dart';
import 'package:side_drawer/page_2.dart';
import 'package:side_drawer/page_3.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('AppBar mit Hamburger Button')),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Text('Drawer Header', textScaler: TextScaler.linear(2)),
            ),
            ListTile(
              tileColor: Colors.amber,
              leading: Icon(Icons.move_up),
              title: Text('Zu Screen 1'),
              trailing: Icon(Icons.email),
              subtitle: Text('Das ist ein Untertitel'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Page1()),
                );
              },
            ),
            ListTile(
              tileColor: Colors.redAccent,
              leading: Icon(Icons.move_up),
              trailing: Icon(Icons.podcasts),
              title: Text('Zu Screen 2'),
              subtitle: Text('Das ist ein Untertitel'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Page2()),
                );
              },
            ),
            ListTile(
              tileColor: Colors.greenAccent,
              leading: Icon(Icons.move_up),
              trailing: Icon(Icons.exit_to_app),
              title: Text('Zu Screen 3'),
              subtitle: Text('Das ist ein Untertitel'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Page3()),
                );
              },
            ),
          ],
        ),
      ),
      body: Center(child: Text('Inhalt', textScaler: TextScaler.linear(2))),
    );
  }
}
