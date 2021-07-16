import 'user_entity.dart';

class MessageEntity {
  final UserEntity sender;
  final String time;
  final String text;
  final bool isLiked;
  final bool unread;

  MessageEntity({
    required this.sender,
    required this.time,
    required this.text,
    required this.isLiked,
    required this.unread,
  });
}
