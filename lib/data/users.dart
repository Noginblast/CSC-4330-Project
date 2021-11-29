import 'package:ratr_dating/data/ratings.dart';
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
    ratings: _PFRatings(),
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
    ratings: _SWRatings(),
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
    ratings: _CRatings(),
  ),
];

final loggedInUser = User(
  name: 'Lord Farquaad',
  designation: 'Not the monster here',
  bio: 'Not a king... Yet.',
  location: 'DuLoc, the Perfect... Princedom?',
  ogre: 'no',
  imgUrl: 'assets/user0.jpg',
  ratingValue: 1,
  ratings: _FqRatings(),
);

RatingData _PFRatings() {
  var pfRatings = RatingData();
  List<List<double>> submissions = [];
  submissions.add([1.0, 2.0, 2.0]);
  submissions.add([4.0, 1.0, 3.0]);
  submissions.add([2.0, 3.0, 1.0]);

  for(int i = 0; i < submissions.length; i++)
    {
      pfRatings.submitRating(submissions[i]);
    }
  //pfRatings.submitRating([1, 2, 2]);
  //pfRatings.submitRating([4, 1, 3]);
  //pfRatings.submitRating([2, 3, 1]);
  return pfRatings;
}

RatingData _SWRatings() {
  var swRatings = RatingData();
  List<List<double>> submissions = [];
  submissions.add([5.0, 5.0, 1.0]);
  submissions.add([4.0, 3.0, 2.0]);

  for(int i = 0; i < submissions.length; i++)
  {
    swRatings.submitRating(submissions[i]);
  }
  //swRatings.submitRating([5, 5, 1]);
  //swRatings.submitRating([4, 3, 2]);
  return swRatings;
}

RatingData _CRatings() {
  var cRatings = RatingData();
  List<List<double>> submissions = [];
  submissions.add([5.0, 5.0, 3.0]);
  submissions.add([4.0, 5.0, 4.0]);
  submissions.add([3.0, 5.0, 3.0]);
  submissions.add([5.0, 5.0, 4.0]);

  for(int i = 0; i < submissions.length; i++)
  {
    cRatings.submitRating(submissions[i]);
  }
  //cRatings.submitRating([5, 5, 3]);
  //cRatings.submitRating([4, 5, 4]);
  //cRatings.submitRating([3, 5, 3]);
  //cRatings.submitRating([5, 5, 4]);
  return cRatings;
}

RatingData _FqRatings() {
  var fqRatings = RatingData();
  List<List<double>> submissions = [];
  submissions.add([3.0, 1.0, 2.0]);
  submissions.add([1.0, 1.0, 1.0]);
  submissions.add([1.0, 1.0, 1.0]);
  submissions.add([1.0, 1.0, 1.0]);
  submissions.add([2.0, 1.0, 2.0]);
  submissions.add([1.0, 1.0, 2.0]);

  for(int i = 0; i < submissions.length; i++)
  {
    fqRatings.submitRating(submissions[i]);
  }
  //fqRatings.submitRating([3, 1, 2]);
  //fqRatings.submitRating([1, 1, 1]);
  //fqRatings.submitRating([1, 1, 1]);
  //fqRatings.submitRating([1, 1, 1]);
  //fqRatings.submitRating([2, 1, 2]);
  //fqRatings.submitRating([1, 1, 2]);
  return fqRatings;
}
