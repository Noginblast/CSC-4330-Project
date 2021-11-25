import 'package:ratr_dating/model/user.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart' as pathProvider;
import 'dart:io';

void PrincessSnowWhite() async {
  var box = await Hive.openBox('usersBox');
  box.put('name', 'Snow White');
  box.put('designation', 'A Cape wearing girl');
  box.put('bio',
      'I live with seven other men, but I am NOT easy. Just kiss my dead, frozen lips and find out what a live wire I am!');
  box.put('location', 'The land of fancy');
  box.put('imgUrl', 'assets/user2.jpg');
  box.put('ratingValue', 3);
}
