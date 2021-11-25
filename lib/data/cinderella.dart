import 'package:ratr_dating/model/user.dart';
import 'package:ratr_dating/model/user.dart';
import 'package:ratr_dating/page/profile_page.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart' as pathProvider;
import 'dart:io';

void PrincessCinderella() async {
  var box = await Hive.openBox('usersBox');
  box.put('name', 'Cinderella');
  box.put('designation', 'A mentally abused shut-in');
  box.put('bio',
      'I like sushi and hottubing anytime! My hobbies include cooking and cleaning for my two evil sisters');
  box.put('location', 'A kingdom far, far away');
  box.put('imgUrl', 'assets/user1.jpg');
  box.put('ratingValue', 4);
}
