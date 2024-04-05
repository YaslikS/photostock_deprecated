import 'package:flutter/material.dart';

import 'theme/theme.dart';
import 'ui/list_screen/list_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Photostock',
      theme: lightTheme,
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
    );
  }
}