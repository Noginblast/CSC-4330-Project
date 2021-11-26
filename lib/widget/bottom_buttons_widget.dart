import 'package:flutter/material.dart';
import 'package:ratr_dating/model/rating.dart';
import 'package:ratr_dating/data/users.dart';
import 'package:ratr_dating/page/home_page.dart';
import 'package:ratr_dating/page/profile_view.dart';
import 'package:ratr_dating/page/chat_page.dart';
import 'package:ratr_dating/page/chat_menu.dart';
import 'package:ratr_dating/page/swipe_page.dart';

class BottomButtonsWidget extends StatelessWidget {
  const BottomButtonsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(
            backgroundColor: Colors.white,
            child: IconButton(
              color: Colors.purple,
              icon: const Icon(Icons.person),
              onPressed: () {
                _gotoHome(context);
              },
            ),
          ),
          CircleAvatar(
            backgroundColor: Colors.white,
            child: IconButton(
              color: Colors.blue,
              icon: const Icon(Icons.star),
              onPressed: () {
                _gotoSwipe(context);
              },
            ),
          ),
          CircleAvatar(
            backgroundColor: Colors.white,
            child: IconButton(
              color: Colors.green,
              icon: const Icon(Icons.chat),
              onPressed: () {
                _gotoChat(context);
              },
            ),
          ),
        ],
      );

  void _gotoHome(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => const HomePage()));
  }

  void _gotoSwipe(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => const SwipePage()));
  }

  void _gotoChat(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => ChatMenu()));//ChatScreen(user: loggedInUser)));
  }
}
