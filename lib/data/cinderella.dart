import 'package:ratr_dating/data/ratings.dart';
import 'package:ratr_dating/model/user.dart';

class PrincessCinderella {
  late User cinderella = User(
        name: 'Cinderella',
        designation: 'A mentally abused shut-in',
        imgUrl: 'assets/user1.jpg',
        bio:
            'I like sushi and hottubing anytime! My hobbies include cooking and cleaning for my two evil sisters',
        ogre: 'no',
        location: 'A kingdom far, far away',
        ratingValue: 4,
        ratings: RatingData(),
      )..name,
      designation,
      bio,
      ogre,
      location,
      ratingValue;

  late List<User> allUsers;

  void createNewUser(User cinderella) {
    allUsers.add(User(
      name: 'Cinderella',
      designation: 'A mentally abused shut-in',
      imgUrl: 'assets/user1.jpg',
      bio:
          'I like sushi and hottubing anytime! My hobbies include cooking and cleaning for my two evil sisters',
      ogre: 'no',
      location: 'A kingdom far, far away',
      ratingValue: 4,
      ratings: RatingData(),
    ));
  }
}
