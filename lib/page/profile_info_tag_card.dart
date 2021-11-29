import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ratr_dating/model/tags.dart';

class ProfileInfoTagCard extends StatelessWidget {
  final UserTags userTags;

  const ProfileInfoTagCard({
    Key? key,
    required this.userTags,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
          padding: const EdgeInsets.only(
            left: 16.0,
            top: 16,
            bottom: 24,
            right: 16,
          ),
          child: Column(
            children: <Widget>[
              TagDisplay(tagList: userTags.tags),
              TagDisplay(tagList: userTags.tags),
            ],
          )),
    );
  }
}
