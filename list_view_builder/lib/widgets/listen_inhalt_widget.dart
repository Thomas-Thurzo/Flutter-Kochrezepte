import 'package:flutter/material.dart';
import 'package:list_view_builder/pages/detail_page_1.dart';
import 'package:list_view_builder/pages/detail_page_2.dart';
import 'package:list_view_builder/pages/detail_page_3.dart';
import 'package:list_view_builder/pages/home_page.dart';

class ListenInhaltWidget extends StatelessWidget {
  const ListenInhaltWidget({super.key, required this.index});

  final int index;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.blueGrey,
          borderRadius: BorderRadius.circular(20),
        ),
        child: ListTile(
          subtitle: Text('Untertitel'),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  if (index == 0) return DetailPage1();
                  if (index == 1) return DetailPage2();
                  if (index == 2) return DetailPage3();
                  return HomePage();
                },
              ),
            );
          },
          textColor: Colors.black,
          iconColor: Colors.amber,
          leading: Icon(Icons.text_fields),
          title: Text('Builder Item Nummer: $index'),
        ),
      ),
    );
  }
}
