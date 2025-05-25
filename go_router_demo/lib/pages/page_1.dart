import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Page 1')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => context.go('/'),
              child: Text('Home Page'),
            ),
            ElevatedButton(
              onPressed: () => context.go('/page2'),
              child: Text('Page 2'),
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
