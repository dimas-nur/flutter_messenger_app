import 'package:flutter/material.dart';

import '../../data/entities/user_entity.dart';

class ChatPage extends StatelessWidget {
  final UserEntity sender;

  const ChatPage({
    Key? key,
    required this.sender,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        toolbarHeight: 68,
        elevation: 0,
        centerTitle: true,
        title: Text(
          sender.name,
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.more_horiz,
              size: 30,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
