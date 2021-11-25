import 'package:ratr_dating/model/user.dart';
import 'package:ratr_dating/model/user.dart';
import 'package:ratr_dating/page/profile_page.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart' as pathProvider;
import 'dart:io';

void PrincessFiona() async {
  var box = await Hive.openBox('usersBox');
  box.put('name', 'Fiona');
  box.put('designation', 'A fiery redhead');
  box.put('bio',
      'I\'m a loaded pistol who likes pina coladas and getting caught in the rain');
  box.put('location',
      'A dragon-guarded castle surrounded by hot, boiling lava (but don\'t let that cool you off)');
  box.put('imgUrl', 'assets/user3.jpg');

  box.put('ratingValue', 5);
}
