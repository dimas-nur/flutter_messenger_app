import 'package:flutter/material.dart';

import 'config/app_theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Chat UI',
      theme: AppTheme.of(context),
      home: const Scaffold(),
    );
  }
}
