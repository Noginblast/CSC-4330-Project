import 'package:flutter/material.dart';
import 'package:ratr_dating/model/user.dart';
import 'package:ratr_dating/page/profile_info_big_card.dart';

import 'opaque_image.dart';

class ProfileView extends StatelessWidget {
  final User user;

  // ignore: use_key_in_widget_constructors
  const ProfileView({
    required this.user,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Column(
            children: <Widget>[
              Expanded(
                flex: 4,
                child: Stack(
                  children: <Widget>[
                    OpaqueImage(
                      imageUrl: AssetImage(user.imgUrl),
                      user: user,
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 5,
                child: Container(
                  color: Colors.white,
                  child: Table(
                    children: [
                      TableRow(
                        children: [
                          ProfileInfoBigCard(
                            firstText: user.name,
                            secondText: user.bio,
                            icon: const Icon(
                              Icons.favorite,
                              color: Colors.pink,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                right: 10,
                left: 10,
                bottom: 10,
                child: IconButton(
                  padding: const EdgeInsets.only(bottom: 16, right: 8),
                  onPressed: () {
                    _navigateToLastScreen(context);
                  },
                  icon: const Icon(Icons.zoom_out, color: Colors.black),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

  void _navigateToLastScreen(BuildContext context) {
    Navigator.of(context).pop();
  }
}
