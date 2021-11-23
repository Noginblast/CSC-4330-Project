import 'package:ratr_dating/model/user.dart';

class PrincessFiona {
  late User fiona = User(
          name: 'Fiona',
          designation: 'A fiery redhead',
          imgUrl: 'assets/user3.jpg',
          bio:
              'I\'m a loaded pistol who likes pina coladas and getting caught in the rain',
          ogre: '"no"',
          location:
              'A dragon-guarded castle surrounded by hot, boiling lava (but don\'t let that cool you off)',
          ratingValue: 5)
        ..name,
      designation,
      bio,
      ogre,
      location,
      ratingValue;

  late List<User> allUsers;

  void createNewUser(User fiona) {
    allUsers.add(User(
        name: 'Fiona',
        designation: 'A fiery redhead',
        imgUrl: 'assets/user3.jpg',
        bio:
            'I\'m a loaded pistol who likes pina coladas and getting caught in the rain',
        ogre: '"no"',
        location:
            'A dragon-guarded castle surrounded by hot, boiling lava (but don\'t let that cool you off)',
        ratingValue: 5));
  }
}
