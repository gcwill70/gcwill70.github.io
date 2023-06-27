import 'package:flutter/material.dart';
import 'package:url_strategy/url_strategy.dart';

import 'ui/home.dart';

void main() {
  setPathUrlStrategy();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return HomePage();
  }
}
