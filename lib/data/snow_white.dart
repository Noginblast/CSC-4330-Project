import 'package:ratr_dating/model/user.dart';

class PrincessSnowWhite {
  User snowWhite = new User(
          name: 'Snow White',
          designation: 'A Cape wearing girl',
          imgUrl: 'assets/user2.jpg',
          bio:
              'I live with seven other men, but I am NOT easy. Just kiss my dead, frozen lips and find out what a live wire I am!',
          ogre: 'no',
          location: 'The land of fancy',
          ratingValue: 3)
        ..name,
      designation,
      bio,
      ogre,
      location,
      ratingValue;

  List<User> allUsers;

  void createNewUser(User snowWhite) {
    allUsers.add(new User(
        name: 'Snow White',
        designation: 'A Cape wearing girl',
        imgUrl: 'assets/user2.jpg',
        bio:
            'I live with seven other men, but I am NOT easy. Just kiss my dead, frozen lips and find out what a live wire I am!',
        ogre: 'no',
        location: 'The land of fancy',
        ratingValue: 3));
  }
}
