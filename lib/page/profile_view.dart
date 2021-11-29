import 'package:flutter/material.dart';
import 'package:ratr_dating/model/user.dart';
import 'package:ratr_dating/page/profile_info_big_card.dart';
import 'package:ratr_dating/page/profile_info_rating_card.dart';
import 'package:ratr_dating/styleguide/colors.dart';
import 'package:ratr_dating/styleguide/palette.dart';

import 'opaque_image.dart';

class ProfileView extends StatefulWidget {
  final User user;

  // ignore: use_key_in_widget_constructors
  const ProfileView({
    required this.user,
  });

  @override
  _ProfileViewState createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            Container(
              height: 900,
              child: Column(
                children: <Widget>[
                  Expanded(
                    flex: 4,
                    child: Stack(
                      children: <Widget>[
                        OpaqueImage(
                          imageUrl: AssetImage(widget.user.imgUrl),
                          user: widget.user,
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 5,
                    child: Container(
                      color: Palette.kToDark[300],
                      child: Table(
                        children: [
                          TableRow(
                            children: [
                              ProfileInfoBigCard(
                                firstText: widget.user.name,
                                secondText: widget.user.bio,
                                icon: const Icon(
                                  Icons.description,
                                  color: Colors.purple,
                                ),
                              ),
                            ],
                          ),
                          TableRow(
                              children: [
                                ProfileInfoRatingCard(
                                    ratingType1: 'Conversation',
                                    ratingType2: 'Respect',
                                    ratingType3: 'Humor',
                                    ratingData: widget.user.ratings
                                ),
                              ]
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
