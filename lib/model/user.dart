// ignore: unused_import
import 'package:flutter/cupertino.dart';
import 'package:ratr_dating/data/ratings.dart';
import 'package:ratr_dating/model/tags.dart';

late List<User> allUsers;

class User {
  final String name;
  final String userID;
  final String designation;
  final String imgUrl;
  final String location;
  final String bio;
  final String ogre;
  final double ratingValue;
  RatingData ratings;
  final UserTags userTags;
  bool isLiked;
  bool isSwipedOff;

  User({
    required this.name,
    required this.userID,
    required this.designation,
    required this.imgUrl,
    required this.location,
    required this.bio,
    required this.ogre,
    required this.ratingValue,
    required this.ratings,
    required this.userTags,
    this.isLiked = false,
    this.isSwipedOff = false,
  });
}
