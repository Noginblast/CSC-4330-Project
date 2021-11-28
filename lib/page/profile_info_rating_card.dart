import 'package:ratr_dating/data/ratings.dart';
import 'package:ratr_dating/styleguide/text_style.dart';
import 'package:flutter/material.dart';

class ProfileInfoRatingCard extends StatelessWidget {
  final String ratingType1;
  final String ratingType2;
  final String ratingType3;
  final RatingData ratingData;

  const ProfileInfoRatingCard({Key? key, required this.ratingType1, required this.ratingType2, required this.ratingType3, required this.ratingData}) : super(key: key);

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
            Text(ratingType1),
            RatingDisplay(
              ratingType: ratingType1,
              ratings: ratingData,
            ),
            Text(ratingType2),
            RatingDisplay(
              ratingType: ratingType2,
              ratings: ratingData,
            ),
            Text(ratingType3),
            RatingDisplay(
              ratingType: ratingType3,
              ratings: ratingData,
            ),
          ],
        ),
      ),
    );
  }
}