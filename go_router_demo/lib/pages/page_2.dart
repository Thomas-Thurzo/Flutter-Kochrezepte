import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(automaticallyImplyLeading: false, title: Text('Page 2')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => context.go('/'),
              child: Text('Home Page'),
            ),
            ElevatedButton(
              onPressed: () => context.go('/page1'),
              child: Text('Page 1'),
            ),
            ElevatedButton(
              onPressed: () => context.go('/page3'),
              child: Text('Page 3'),
            ),
          ],
        ),
      ),
    );
  }
}
