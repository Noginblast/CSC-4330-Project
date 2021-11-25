import 'package:ratr_dating/model/user.dart';

final dummyUsers = [
  User(
    name: 'Princess Fiona',
    designation: 'A fiery redhead',
    bio:
        'I\'m a loaded pistol who likes pina coladas and getting caught in the rain',
    ogre: '"no"',
    location:
        'A dragon-guarded castle surrounded by hot, boiling lava (but don\'t let that cool you off)',
    imgUrl: 'assets/user3.jpg',
    ratingValue: 5,
  ),
  User(
    name: 'Snow White',
    designation: 'A Cape wearing girl',
    bio:
        'I live with seven other men, but I am NOT easy. Just kiss my dead, frozen lips and find out what a live wire I am!',
    location: 'The land of fancy',
    ogre: 'no',
    imgUrl: 'assets/user2.jpg',
    ratingValue: 3,
  ),
  User(
    name: 'Cinderella',
    designation: 'A mentally abused shut-in',
    bio:
        'I like sushi and hottubing anytime! My hobbies include cooking and cleaning for my two evil sisters',
    location: 'A kingdom far, far away',
    ogre: 'no',
    imgUrl: 'assets/user1.jpg',
    ratingValue: 4,
  ),
];

final loggedInUser = User(
  name: 'Lord Farquaad',
  designation: 'Not the monster here',
  bio: 'Not a king... Yet.',
  location: 'DuLoc, the Perfect... Princedom?',
  ogre: 'no',
  imgUrl: 'assets/user1.jpg',
  ratingValue: 1,
);
