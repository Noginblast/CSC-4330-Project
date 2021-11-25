// ignore_for_file: unused_label

import 'package:ratr_dating/model/user.dart';
import 'package:ratr_dating/page/profile_page.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart' as pathProvider;
import 'dart:io';

void main() async {
  var box = await Hive.openBox('usersBox');
  name:
  box.get('name');
  designation:
  box.get('designation');
  bio:
  box.get('bio');
  location:
  box.get('location');
  imgUrl:
  box.get('imgURL');
  ratingValue:
  box.get('ratingValue');
}
