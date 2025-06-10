import 'package:flutter/material.dart';
import 'package:samsung_testing/counter_screen.dart';
import 'package:samsung_testing/stateful_color_changing_text.dart';

import 'flavour_config.dart';
import 'home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final config = FlavorConfig.config;

    return MaterialApp(
      title: config.appName,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: config.primaryColor,
          brightness: Brightness.light,
        ),
      ),
      home: const HomeScreen(),
    );
  }
}

