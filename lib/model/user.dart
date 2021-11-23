import 'package:flutter/cupertino.dart';
import 'package:ratr_dating/model/rating.dart';

class User {
  final String name;
  final String designation;
  final String imgUrl;
  final String location;
  final String bio;
  final String ogre;
  final String ratingValue;
  bool isLiked;
  bool isSwipedOff;

  User({
    @required this.designation,
    @required this.name,
    @required this.imgUrl,
    @required this.location,
    @required this.bio,
    @required this.ogre,
    @required this.ratingValue,
    this.isLiked = false,
    this.isSwipedOff = false,
  });
}
