import 'package:ratr_dating/data/ratings.dart';
import 'package:ratr_dating/model/user.dart';

class LordFarquaad {
  late User farquaad = User(
        name: 'Maximus',
        designation: 'Rightful ruler of the Kingdom of Duloc',
        imgUrl: 'assets/user0.jpg',
        bio:
            'If I\'m not in my dungeon cross-examining a gingerbread cookie about the mysterious Muffin Man, then I\'m reclined in y chamber bed watching my magical mirror',
        ogre: 'no',
        location: 'The Kingdom of Duloc',
        ratingValue: 5,
        ratings: RatingData(),
      )..name,
      designation,
      bio,
      ogre,
      location,
      ratingValue;

  late List<User> allUsers;

  void createNewUser(User farquaad) {
    allUsers.add(User(
      name: 'Maximus',
      designation: 'Rightful ruler of the Kingdom of Duloc',
      imgUrl: 'assets/user0.jpg',
      bio:
          'If I\'m not in my dungeon cross-examining a gingerbread cookie about the mysterious Muffin Man, then I\'m reclined in y chamber bed watching my magical mirror',
      ogre: 'no',
      location: 'The Kingdom of Duloc',
      ratingValue: 5,
      ratings: RatingData(),
    ));
  }
}
