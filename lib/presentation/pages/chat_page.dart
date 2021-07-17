import 'package:flutter/material.dart';

import '../../data/data_providers/dummy_data.dart';
import '../../data/entities/message_entity.dart';
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
      body: Column(
        children: [
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
                child: Stack(
                  children: [
                    Column(
                      children: [
                        Expanded(
                          child: ListView.builder(
                            padding: const EdgeInsets.symmetric(
                              vertical: 10,
                            ),
                            shrinkWrap: true,
                            itemCount: DummyData.getMessages(sender).length,
                            itemBuilder: (context, index) {
                              final message =
                                  DummyData.getMessages(sender)[index];

                              return _cardMessage(
                                message,
                                message.sender.id ==
                                    DummyData.getCurrentUser().id,
                              );
                            },
                          ),
                        ),
                        // TODO : Change to widget message composer
                        Container(
                          height: 80,
                          color: Colors.white,
                        )
                      ],
                    ),
                    Container(
                      height: 30,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.white,
                            Colors.white.withOpacity(0.1),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _cardMessage(
    MessageEntity message,
    bool isMe,
  ) {
    final widgets = [
      Expanded(
        child: Container(
          decoration: BoxDecoration(
            color: isMe
                ? Colors.yellow.withOpacity(0.15)
                : Colors.red.withOpacity(0.15),
            borderRadius: BorderRadius.horizontal(
              left: Radius.circular(isMe ? 20 : 0),
              right: Radius.circular(!isMe ? 20 : 0),
            ),
          ),
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                message.time,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                message.text,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Colors.blueGrey,
                ),
              ),
            ],
          ),
        ),
      ),
      Container(
        padding: const EdgeInsets.only(
          right: 20,
          left: 8,
        ),
        child: Center(
          child: !isMe
              ? IconButton(
                  onPressed: () {},
                  icon: Icon(
                    message.isLiked ? Icons.favorite : Icons.favorite_border,
                    color: message.isLiked ? Colors.redAccent : Colors.grey,
                    size: 30,
                  ),
                )
              : const SizedBox(
                  width: 50,
                ),
        ),
      ),
    ];

    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 10,
      ),
      child: Row(
        children: isMe ? widgets.reversed.toList() : widgets,
      ),
    );
  }
}
