// ignore_for_file: unused_import
import 'package:flutter/cupertino.dart';
import 'package:ratr_dating/page/profile_page.dart';
import 'package:hive/hive.dart';
// ignore: library_prefixes
import 'package:path_provider/path_provider.dart' as pathProvider;
import 'dart:io';
part 'user.g.dart';

@HiveType(typeId: 1)
class ratrUser {
  @HiveField(0)
  final String name;
  @HiveField(1)
  final String pronouns;
  @HiveField(2)
  final String designation;
  @HiveField(3)
  final String imgUrl;
  @HiveField(4)
  final String location;
  @HiveField(5)
  final String bio;
  @HiveField(6)
  final double ratingValue;
  @HiveField(7)
  ratrUser(this.name, this.pronouns, this.designation, this.imgUrl,
      this.location, this.bio, this.ratingValue);
}
