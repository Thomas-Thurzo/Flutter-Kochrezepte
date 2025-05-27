import 'package:flutter/material.dart';
import 'package:list_view_builder/widgets/listen_inhalt_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text('ListViewBuilder Demo')),
      body: ListView.builder(
        itemCount: 3,
        itemBuilder: (context, index) {
          return ListenInhaltWidget(index: index);
        },
      ),
    );
  }
}
