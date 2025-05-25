import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home Page')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => context.go('/page1'),
              child: Text('Page 1'),
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
