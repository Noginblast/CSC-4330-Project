import 'package:flutter/cupertino.dart';

class User {
  final String name;
  final String designation;
  final String imgUrl;
  final String location;
  final String bio;
  final String ogre;
  bool isLiked;
  bool isSwipedOff;

  User({
    @required this.designation,
    @required this.name,
    @required this.imgUrl,
    @required this.location,
    @required this.bio,
    @required this.ogre,
    this.isLiked = false,
    this.isSwipedOff = false,
  });
}
