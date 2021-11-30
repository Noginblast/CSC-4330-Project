import 'package:ratr_dating/data/ratings.dart';
import 'package:ratr_dating/model/tags.dart';
import 'package:ratr_dating/model/user.dart';

final dummyUsers = [
  User(
    name: 'Princess Fiona',
    userID: '4',
    designation: 'A fiery redhead',
    bio:
        'I\'m a loaded pistol who likes pina coladas and getting caught in the rain',
    ogre: '"no"',
    location:
        'A dragon-guarded castle surrounded by hot, boiling lava (but don\'t let that cool you off)',
    imgUrl: 'assets/user3.jpg',
    ratingValue: 5,
    ratings: _PFRatings(),
    userTags: _PFTags(),
  ),
  User(
    name: 'Snow White',
    userID: '3',
    designation: 'A Cape wearing girl',
    bio:
        'I live with seven other men, but I am NOT easy. Just kiss my dead, frozen lips and find out what a live wire I am!',
    location: 'The land of fancy',
    ogre: 'no',
    imgUrl: 'assets/user2.jpg',
    ratingValue: 3,
    ratings: _SWRatings(),
    userTags: _SWTags(),
  ),
  User(
    name: 'Cinderella',
    userID: '2',
    designation: 'A mentally abused shut-in',
    bio:
        'I like sushi and hottubing anytime! My hobbies include cooking and cleaning for my two evil sisters',
    location: 'A kingdom far, far away',
    ogre: 'no',
    imgUrl: 'assets/user1.jpg',
    ratingValue: 4,
    ratings: _CRatings(),
    userTags: _CTags(),
  ),
];

final loggedInUser = User(
  name: 'Lord Farquaad',
  userID: '1',
  designation: 'Not the monster here',
  bio: 'Not a king... Yet.',
  location: 'DuLoc, the Perfect... Princedom?',
  ogre: 'no',
  imgUrl: 'assets/user0.jpg',
  ratingValue: 1,
  ratings: _FqRatings(),
  userTags: _FqTags(),
);

RatingData _PFRatings() {
  var pfRatings = RatingData();
  List<List<double>> submissions = [];
  submissions.add([1.0, 2.0, 2.0]);
  submissions.add([4.0, 1.0, 3.0]);
  submissions.add([2.0, 3.0, 1.0]);

  for (int i = 0; i < submissions.length; i++) {
    pfRatings.submitRating(submissions[i]);
  }
  //pfRatings.submitRating([1, 2, 2]);
  //pfRatings.submitRating([4, 1, 3]);
  //pfRatings.submitRating([2, 3, 1]);
  return pfRatings;
}

UserTags _PFTags() {
  var pfTags = UserTags(userID: '4');
  List<String> tags = [];
  tags.add('Pina Coladas');
  tags.add('Getting Caught in the Rain');

  pfTags.setupNewTags();
  for (var tag in tags) {
    pfTags.tags.add(tag);
  }
  return pfTags;
}

RatingData _SWRatings() {
  var swRatings = RatingData();
  List<List<double>> submissions = [];
  submissions.add([5.0, 5.0, 1.0]);
  submissions.add([4.0, 3.0, 2.0]);

  for (int i = 0; i < submissions.length; i++) {
    swRatings.submitRating(submissions[i]);
  }
  //swRatings.submitRating([5, 5, 1]);
  //swRatings.submitRating([4, 3, 2]);
  return swRatings;
}

UserTags _SWTags() {
  var swTags = UserTags(userID: '3');
  List<String> tags = [];
  tags.add('Pets');
  tags.add('Dancing');
  tags.add('Cleaning');

  swTags.setupNewTags();
  for (var tag in tags) {
    swTags.tags.add(tag);
  }
  return swTags;
}

RatingData _CRatings() {
  var cRatings = RatingData();
  List<List<double>> submissions = [];
  submissions.add([5.0, 5.0, 3.0]);
  submissions.add([4.0, 5.0, 4.0]);
  submissions.add([3.0, 5.0, 3.0]);
  submissions.add([5.0, 5.0, 4.0]);

  for (int i = 0; i < submissions.length; i++) {
    cRatings.submitRating(submissions[i]);
  }
  //cRatings.submitRating([5, 5, 3]);
  //cRatings.submitRating([4, 5, 4]);
  //cRatings.submitRating([3, 5, 3]);
  //cRatings.submitRating([5, 5, 4]);
  return cRatings;
}

UserTags _CTags() {
  var cTags = UserTags(userID: '2');
  List<String> tags = [];
  tags.add('Sushi');
  tags.add('Hottubing');
  tags.add('Cooking');
  tags.add('Cleaning');

  cTags.setupNewTags();
  for (var tag in tags) {
    cTags.tags.add(tag);
  }
  return cTags;
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

  for (int i = 0; i < submissions.length; i++) {
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

UserTags _FqTags() {
  var fqTags = UserTags(userID: '1');
  List<String> tags = [];
  tags.add('Fishing');
  tags.add('Cooking');
  tags.add('Hiking');

  fqTags.setupNewTags();
  for (var tag in tags) {
    fqTags.tags.add(tag);
  }
  return fqTags;
}
