import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Index für die Widgets
  int _index = 0;

  // Text Styling
  static const TextStyle optionStyle = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.bold,
  );

  // Liste mit verschiedenen Widgets welche angezeigt werden
  static const List<Widget> _widgetsOptions = <Widget>[
    Text('Index 0: Home', style: optionStyle),
    Text('Index 1: Geschäftlich', style: optionStyle),
    Text('Index 2: Schule', style: optionStyle),
    Text('Index 3: Einstellungen', style: optionStyle),
  ];

  // Methode für On Tapped Event
  void _onItemTappedMethode(int index) {
    setState(() {
      _index = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Bottom Navigation Bar Beispiel'),
      ),
      body: Center(child: _widgetsOptions.elementAt(_index)),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
            backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
            backgroundColor: Colors.purple,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
            backgroundColor: Colors.pink,
          ),
        ],
        currentIndex: _index,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTappedMethode,
      ),
    );
  }
}
