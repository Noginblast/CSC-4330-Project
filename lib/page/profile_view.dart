import 'package:flutter/material.dart';
import 'package:ratr_dating/model/user.dart';
import 'package:ratr_dating/page/profile_info_big_card.dart';

import 'opaque_image.dart';

class ProfileView extends StatelessWidget {
  final User user;
  final bool isUserInFocus;

  // ignore: use_key_in_widget_constructors
  const ProfileView({
    required this.user,
    required this.isUserInFocus,
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
            ],
          ),
        ],
      ),
    );
  }
}
