import 'dart:io';

import 'package:ratr_dating/data/cinderella.dart';
import 'package:ratr_dating/data/fiona.dart';
import 'package:ratr_dating/data/snow_white.dart';
import 'package:ratr_dating/data/users.dart';
import 'package:ratr_dating/model/user.dart';
import 'package:ratr_dating/data/all.dart';

class Message {
  final User sender;
  final String
      time; // Would usually be type DateTime or Firebase Timestamp in production apps
  final String text;
  final bool isLiked;
  final bool unread;

  Message({
    required this.sender,
    required this.time,
    required this.text,
    required this.isLiked,
    required this.unread,
  });
}

// YOU - current user
// final User currentUser = PrincessCinderella().cinderella;
final User currentUser = loggedInUser;

// USERS
// final User fiona = PrincessFiona().fiona;
// final User snowWhite = PrincessSnowWhite().snowWhite;
// final User cinderella = PrincessCinderella().cinderella;

final User fiona = dummyUsers[0];
final User snowWhite = dummyUsers[1];
final User cinderella = dummyUsers[2];

// FAVORITE CONTACTS
List<User> favorites = [fiona, snowWhite, cinderella];

// EXAMPLE CHATS ON HOME SCREEN
List<Message> chats = [
  Message(
    sender: fiona,
    time: '5:30 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: snowWhite,
    time: '4:30 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: cinderella,
    time: '3:30 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: false,
    unread: false,
  ),
];

// EXAMPLE MESSAGES IN CHAT SCREEN
List<Message> messages = [
  Message(
    sender: fiona,
    time: '5:30 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: true,
    unread: true,
  ),
  Message(
    sender: currentUser,
    time: '4:30 PM',
    text: 'Just walked my doge. She was super duper cute. The best pupper!!',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: fiona,
    time: '3:45 PM',
    text: 'How\'s the doggo?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: fiona,
    time: '3:15 PM',
    text: 'All the food',
    isLiked: true,
    unread: true,
  ),
  Message(
    sender: currentUser,
    time: '2:30 PM',
    text: 'Nice! What kind of food did you eat?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: fiona,
    time: '2:00 PM',
    text: 'I ate so much food today.',
    isLiked: false,
    unread: true,
  ),
];
