import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Page 2')),
      body: Center(
        child: Hero(tag: 'Alarm', child: Icon(Icons.alarm, size: 100)),
      ),
    );
  }
}
