import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ratr_dating/page/home_page.dart';
import 'package:ratr_dating/provider/feedback_position_provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
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
