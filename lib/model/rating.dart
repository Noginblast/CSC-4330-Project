import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:ratr_dating/data/users.dart';
import 'package:ratr_dating/model/message_model.dart';
import 'package:ratr_dating/model/user.dart';

class RatingPage extends StatefulWidget {
  User user;

  RatingPage({Key? key, required this.user}) : super(key: key);
  @override
  _RatingPageState createState() => _RatingPageState();
}

class _RatingPageState extends State<RatingPage> {
  late double convValue = 0.0;
  late double respValue = 0.0;
  late double humValue = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Ratr Dating'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(25),
          child: Center(
            child: Column(
              children: [
                const Text(
                  'How\'d I do?',
                  style: TextStyle(fontSize: 24),
                ),
                const SizedBox(height: 25),
                RatingBar(
                    initialRating: 0,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    ratingWidget: RatingWidget(
                        full: const Icon(MdiIcons.heart, color: Colors.pink),
                        half: const Icon(MdiIcons.heartHalfFull, color: Colors.pink),
                        empty: const Icon(MdiIcons.heartOutline, color: Colors.pink)
                    ),
                    onRatingUpdate: (value) {
                      setState(() {
                        convValue = value;
                      });
                    }),
                const Text('Conversation'),
                const SizedBox(height: 80),
                RatingBar(
                    initialRating: 0,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    ratingWidget: RatingWidget(
                        full: const Icon(MdiIcons.heart, color: Colors.pink),
                        half: const Icon(MdiIcons.heartHalfFull, color: Colors.pink),
                        empty: const Icon(MdiIcons.heartOutline, color: Colors.pink)
                    ),
                    onRatingUpdate: (value) {
                      setState(() {
                        respValue = value;
                      });
                    }),
                const Text('Respect'),

                const SizedBox(height: 80),
                RatingBar(
                    initialRating: 0,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    ratingWidget: RatingWidget(
                        full: const Icon(MdiIcons.heart, color: Colors.pink),
                        half: const Icon(MdiIcons.heartHalfFull, color: Colors.pink),
                        empty: const Icon(MdiIcons.heartOutline, color: Colors.pink)
                    ),
                    onRatingUpdate: (value) {
                      setState(() {
                        humValue = value;
                      });
                    }),
                const Text('Humor'),


                const SizedBox(height: 50),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(fixedSize: const Size(150,70)),
                    onPressed: () {widget.user.ratings.submitRating([convValue,respValue,humValue]);},
                    child: const Text('Submit'),
                ),
              ],
            ),
          ),
        ));
  }
}
