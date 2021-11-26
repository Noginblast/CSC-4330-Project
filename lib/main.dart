import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ratr_dating/page/chat_page.dart';
import 'package:ratr_dating/page/home_page.dart';
import 'package:ratr_dating/provider/feedback_position_provider.dart';
import 'package:ratr_dating/data/cinderella.dart';
import 'package:ratr_dating/styleguide/palette.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
        create: (context) => FeedbackPositionProvider(),
        child: MaterialApp(
          title: 'Ratr Dating',
          theme: ThemeData(
            primarySwatch: Palette.kToDark,
            visualDensity: VisualDensity.adaptivePlatformDensity,
          ),
          debugShowCheckedModeBanner: false,
          home: const HomePage(),
        ),
      );
  Widget chat(BuildContext context) {
    return MaterialApp(
      title: 'Messages',
      theme: ThemeData(
        primarySwatch: Palette.kToDark,
      ),
      debugShowCheckedModeBanner: false,
      home: Container(),
    );
  }
}
