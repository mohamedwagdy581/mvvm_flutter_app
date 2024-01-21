import 'package:flutter/material.dart';

import '../presentation/resources/theme_manager.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: getApplicationTheme(),
    );
  }
}

class Test extends StatelessWidget {
  const Test({super.key});
  void updateAppState() {}

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
