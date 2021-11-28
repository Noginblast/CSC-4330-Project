import 'package:ratr_dating/data/ratings.dart';
import 'package:ratr_dating/styleguide/text_style.dart';
import 'package:flutter/material.dart';

class ProfileInfoRatingCard extends StatelessWidget {
  final String ratingType;
  final RatingData ratingData;

  const ProfileInfoRatingCard({Key? key, required this.ratingType, required this.ratingData}) : super(key: key);

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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(ratingType),
            RatingDisplay(
              ratingType: ratingType,
              ratings: ratingData,
            ),
            Text(ratingType),
            RatingDisplay(
              ratingType: ratingType,
              ratings: ratingData,
            ),
            Text(ratingType),
            RatingDisplay(
              ratingType: ratingType,
              ratings: ratingData,
            ),
          ],
        ),
      ),
    );
  }
}