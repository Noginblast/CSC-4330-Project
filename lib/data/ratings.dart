import 'dart:math';

import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
// ignore: import_of_legacy_library_into_null_safe;
import 'package:smooth_star_rating/smooth_star_rating.dart';

// void main() => runApp(const RatingDisplay());

class RatingDisplay extends StatefulWidget {
  // const RatingDisplay({Key? key}) : super(key: key);

  final String ratingType;
  final RatingData ratings;
  // ignore: use_key_in_widget_constructors
  RatingDisplay({
    required this.ratingType,
    required this.ratings,
  }) {
    setupRatingDisplay();
  }

  double ratingVal = -1;
  void setupRatingDisplay() {
    if (ratingType == 'Conversation') {
      ratingVal = ratings.getConversation();
    } else if (ratingType == 'Respect') {
      ratingVal = ratings.getRespect();
    } else if (ratingType == 'Humor') {
      ratingVal = ratings.getHumor();
    } else {}
  }

  @override
  _RatingDisplayState createState() => _RatingDisplayState();
}

class _RatingDisplayState extends State<RatingDisplay> {
  @override
  Widget build(BuildContext context) {
    // return MaterialApp(
    //   title: 'Rating bar demo',
    //   theme: ThemeData(
    //     primarySwatch: Colors.green,
    //   ),
    //   debugShowCheckedModeBanner: false,
    //   home: Scaffold(
    //     body: Center(
    //         child: SmoothStarRating(
    //       rating: rating.getConversation(),
    //       isReadOnly: false,
    //       size: 80,
    //       filledIconData: Icons.star,
    //       halfFilledIconData: Icons.star_half,
    //       defaultIconData: Icons.star_border,
    //       starCount: 5,
    //       allowHalfRating: true,
    //       spacing: 2.0,
    //       onRated: (value) {
    //         // ignore: avoid_print
    //         print("rating value -> $value");
    //         // print("rating value dd -> ${value.truncate()}");
    //       },
    //     )),
    //   ),
    // );

    return SmoothStarRating(
      rating: widget.ratingVal,
      isReadOnly: true,
      size: 60,
      filledIconData: MdiIcons.heart,
      halfFilledIconData: MdiIcons.heartHalfFull,
      defaultIconData: MdiIcons.heartOutline,
      starCount: 5,
      allowHalfRating: true,
      spacing: 2.0,
    );
  }
}

class RatingData {
  // TODO: implement reasons (description of rating)
  Map<String, double> rating = {
    'Conversation': -1.0,
    'Respect': -1.0,
    'Humor': -1.0
  };
  List<List<double>> submittedRatings = [];

  void calcRating() {
    if (submittedRatings.isEmpty) {
      rating = {'Conversation': -1.0, 'Respect': -1.0, 'Humor': -1.0};
    } else {
      var tempRating = [0.0, 0.0, 0.0];
      int numRatings = submittedRatings.length;
      var ratingTypes = ['Conversation', 'Respect', 'Humor'];
      for (int i = 0; i < ratingTypes.length; i++) {
        for (int j = 0; j < numRatings; j++) {
          tempRating[i] += submittedRatings[j][i];
        }
        tempRating[i] /= numRatings;
        rating[ratingTypes[i]] = max(0.0, tempRating[i]);
      }
    }
  }

  void submitRating(List<double> newRating) {
    submittedRatings.add(newRating);
    calcRating();
  }

  getConversation() {
    return rating['Conversation'];
  }

  getRespect() {
    return rating['Respect'];
  }

  getHumor() {
    return rating['Humor'];
  }
}
