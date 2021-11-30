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

class _ProfileViewState extends State<ProfileView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Palette.kToLight,
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            Container(
              color: secondaryColor,
              height: 1300,
              child: Column(
                children: <Widget>[
                  Expanded(
                    flex: 45,
                    child: Stack(
                      children: <Widget>[
                       Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image: AssetImage(widget.user.imgUrl),
                            fit: BoxFit.fill,
                          ),
                        ),
                       )
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 85,
                    child: Container(
                      // color: Palette.kToDark[300],
                      color: Palette.kToDark,
                      child: Table(
                        children: [
                          TableRow(
                            children: [
                              ProfileInfoBigCard(
                                firstText: widget.user.name,
                                secondText: widget.user.bio,
                                icon: const Icon(
                                  Icons.description,
                                  color: primaryColor,
                                ),
                              ),
                            ],
                          ),
                          TableRow(children: [
                            ProfileInfoRatingCard(
                                ratingType1: 'Conversation',
                                ratingType2: 'Respect',
                                ratingType3: 'Humor',
                                ratingData: widget.user.ratings),
                          ])
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
