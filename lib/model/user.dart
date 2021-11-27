// ignore: unused_import
import 'package:flutter/cupertino.dart';
import 'package:ratr_dating/data/ratings.dart';

late List<User> allUsers;

class User {
  final String name;
  final String designation;
  final String imgUrl;
  final String location;
  final String bio;
  final String ogre;
  final double ratingValue;
  RatingData ratings;
  bool isLiked;
  bool isSwipedOff;

  User({
    required this.designation,
    required this.name,
    required this.imgUrl,
    required this.location,
    required this.bio,
    required this.ogre,
    required this.ratingValue,
    required this.ratings,
    this.isLiked = false,
    this.isSwipedOff = false,
  });
}
