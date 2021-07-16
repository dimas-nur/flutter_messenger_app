import '../entities/entity.dart';

// ignore: avoid_classes_with_only_static_members
class DummyData {
  /* --- User --- */

  static final UserEntity greg = UserEntity(
    id: 1,
    name: 'Greg',
    imageUrl: 'assets/images/greg.jpg',
  );
  static final UserEntity james = UserEntity(
    id: 2,
    name: 'James',
    imageUrl: 'assets/images/james.jpg',
  );
  static final UserEntity john = UserEntity(
    id: 3,
    name: 'John',
    imageUrl: 'assets/images/john.jpg',
  );
  static final UserEntity olivia = UserEntity(
    id: 4,
    name: 'Olivia',
    imageUrl: 'assets/images/olivia.jpg',
  );
  static final UserEntity sam = UserEntity(
    id: 5,
    name: 'Sam',
    imageUrl: 'assets/images/sam.jpg',
  );
  static final UserEntity sophia = UserEntity(
    id: 6,
    name: 'Sophia',
    imageUrl: 'assets/images/sophia.jpg',
  );
  static final UserEntity steven = UserEntity(
    id: 7,
    name: 'Steven',
    imageUrl: 'assets/images/steven.jpg',
  );

  static UserEntity getCurrentUser() => UserEntity(
        id: 0,
        name: 'Current User',
        imageUrl: 'assets/images/greg.jpg',
      );

  static List<UserEntity> getFavoriteContacts() => [
        sam,
        steven,
        olivia,
        john,
        greg,
      ];

  /* --- Chat --- */

  static List<MessageEntity> getChats() => [
        MessageEntity(
          sender: james,
          time: '5:30 PM',
          text: "Hey, how's it going? What did you do today?",
          isLiked: false,
          unread: true,
        ),
        MessageEntity(
          sender: olivia,
          time: '4:30 PM',
          text: "Hey, how's it going? What did you do today?",
          isLiked: false,
          unread: true,
        ),
        MessageEntity(
          sender: john,
          time: '3:30 PM',
          text: "Hey, how's it going? What did you do today?",
          isLiked: false,
          unread: false,
        ),
        MessageEntity(
          sender: sophia,
          time: '2:30 PM',
          text: "Hey, how's it going? What did you do today?",
          isLiked: false,
          unread: true,
        ),
        MessageEntity(
          sender: steven,
          time: '1:30 PM',
          text: "Hey, how's it going? What did you do today?",
          isLiked: false,
          unread: false,
        ),
        MessageEntity(
          sender: sam,
          time: '12:30 PM',
          text: "Hey, how's it going? What did you do today?",
          isLiked: false,
          unread: false,
        ),
        MessageEntity(
          sender: greg,
          time: '11:30 AM',
          text: "Hey, how's it going? What did you do today?",
          isLiked: false,
          unread: false,
        ),
      ];

  static List<MessageEntity> getMessages() => [
        MessageEntity(
          sender: james,
          time: '5:30 PM',
          text: "Hey, how's it going? What did you do today?",
          isLiked: true,
          unread: true,
        ),
        MessageEntity(
          sender: getCurrentUser(),
          time: '4:30 PM',
          text:
              'Just walked my doge. She was super duper cute. The best pupper!!',
          isLiked: false,
          unread: true,
        ),
        MessageEntity(
          sender: james,
          time: '3:45 PM',
          text: "How's the doggo?",
          isLiked: false,
          unread: true,
        ),
        MessageEntity(
          sender: james,
          time: '3:15 PM',
          text: 'All the food',
          isLiked: true,
          unread: true,
        ),
        MessageEntity(
          sender: getCurrentUser(),
          time: '2:30 PM',
          text: "Nice! What kind of food did you eat?",
          isLiked: false,
          unread: true,
        ),
        MessageEntity(
          sender: james,
          time: '2:00 PM',
          text: 'I ate so much food today.',
          isLiked: false,
          unread: true,
        ),
      ];
}
