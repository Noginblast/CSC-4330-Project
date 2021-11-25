// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ratr_dating/page/home_page.dart';
import 'package:ratr_dating/provider/feedback_position_provider.dart';
import 'package:hive/hive.dart';
// ignore: library_prefixes
import 'package:path_provider/path_provider.dart' as pathProvider;
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'dart:io';
import 'dart:convert';

Future<void> main() async {
  final database = await pathProvider.getApplicationDocumentsDirectory();
  Hive.init(database.path);
  // ignore: prefer_typing_uninitialized_variables
  var encryptionKey;
  final usersBox = await Hive.openBox('Users',
      encryptionCipher: HiveAesCipher(encryptionKey));
  Hive.box('usersBox');
  //Hive.registerAdapter(UsersAdapter());
  // ignore: constant_identifier_names
  const FlutterSecureStorage Users = FlutterSecureStorage();
  var containsEncryptionKey = await Users.containsKey(key: 'key');

  if (!containsEncryptionKey) {
    var key = Hive.generateSecureKey();
    await Users.write(key: 'key', value: base64Url.encode(key));
  }
  encryptionKey = base64Url.decode(await Users.read(key: 'key') ?? "");

  print('Encryption key: $encryptionKey');
  usersBox.put('secret', 'Hive is cool');
  print(usersBox.get('secret'));
  runApp(const MyApp());
  //Hive.close();
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
        create: (context) => FeedbackPositionProvider(),
        child: MaterialApp(
          title: 'Ratr Dating',
          theme: ThemeData(
            primarySwatch: Colors.pink,
            visualDensity: VisualDensity.adaptivePlatformDensity,
          ),
          home: HomePage(),
        ),
      );
  Widget chat(BuildContext context) {
    return MaterialApp(
      title: 'Messages',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      debugShowCheckedModeBanner: false,
      home: Container(),
    );
  }
}
