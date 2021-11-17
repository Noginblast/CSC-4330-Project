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
            primarySwatch: Colors.deepOrange,
            visualDensity: VisualDensity.adaptivePlatformDensity,
          ),
          home: HomePage(),
        ),
      );
}
