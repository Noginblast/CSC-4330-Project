// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class OpaqueImage extends StatelessWidget {
  final imageUrl;
  final user;

  const OpaqueImage({Key? key, required this.imageUrl, required this.user})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Image.asset(
          user.imgUrl,
          width: double.maxFinite,
          height: double.maxFinite,
          fit: BoxFit.fill,
        ),
        Container(
          color: const Color(0xFF9C52A5).withOpacity(0.1),
        ),
      ],
    );
  }
}
