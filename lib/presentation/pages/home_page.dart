import 'package:flutter/material.dart';

import '../widgets/widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.menu,
            size: 30,
          ),
          onPressed: () {},
        ),
        centerTitle: true,
        title: const Text(
          'Chats',
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.search,
              size: 30,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: const [
          CategorySelector(),
        ],
      ),
    );
  }
}
