import 'package:flutter/material.dart';
import 'package:flutter_messenger_app/presentation/pages/home_page.dart';

import 'config/app_theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Chat UI',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.of(context),
      home: const HomePage(),
    );
  }
}
