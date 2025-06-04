import 'package:flutter/material.dart';
import 'package:forms/widgets/controler_widget.dart';
import 'package:forms/widgets/form_widget.dart';
import 'package:forms/widgets/on_changed_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _index = 0;
  static const List<Widget> _widgets = [
    OnChangedWidget(),
    ControlerWidget(),
    FormWidget(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        centerTitle: true,
        title: Text(
          'Verschiedene Forms',
          style: TextStyle(fontSize: 30, color: Colors.white),
        ),
      ),
      body: Center(child: _widgets.elementAt(_index)),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'OnChanged()'),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Controller'),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Form Widget'),
        ],
        currentIndex: _index,
        selectedItemColor: Colors.blue[800],
        onTap: (index) {
          setState(() {
            _index = index;
          });
        },
      ),
    );
  }
}
