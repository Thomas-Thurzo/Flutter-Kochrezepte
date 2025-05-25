import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_demo/pages/home_page.dart';
import 'package:go_router_demo/pages/page_1.dart';
import 'package:go_router_demo/pages/page_2.dart';
import 'package:go_router_demo/pages/page_3.dart';

final GoRouter router = GoRouter(
  initialLocation: '/',
  debugLogDiagnostics: true, // Zeigt in der Debugging-Konsole den Pfad an.
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      name: 'home',
      builder: (BuildContext context, GoRouterState state) {
        return const HomePage();
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'page1',
          name: 'page1',
          builder: (BuildContext context, GoRouterState state) {
            return const Page1();
          },
        ),
        GoRoute(
          path: 'page2',
          name: 'page2',
          builder: (BuildContext context, GoRouterState state) {
            return const Page2();
          },
        ),
        GoRoute(
          path: 'page3',
          name: 'page3',
          builder: (BuildContext context, GoRouterState state) {
            return const Page3();
          },
        ),
      ],
    ),
  ],
);
