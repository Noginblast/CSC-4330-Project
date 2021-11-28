import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class RatingPage extends StatefulWidget {
  const RatingPage({Key? key}) : super(key: key);

  @override
  _RatingPageState createState() => _RatingPageState();
}

class _RatingPageState extends State<RatingPage> {
  late double ratingValue = 0.0;
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
                    allowHalfRating: false,
                    itemCount: 5,
                    ratingWidget: RatingWidget(
                        full: const Icon(Icons.favorite, color: Colors.pink),
                        half: const Icon(
                          Icons.favorite,
                          color: Colors.pink,
                        ),
                        empty: const Icon(
                          Icons.favorite_border,
                          color: Colors.pink,
                        )),
                    onRatingUpdate: (value) {
                      setState(() {
                        ratingValue = value;
                      });
                    }),
                const SizedBox(height: 25),
                Container(
                  width: 200,
                  height: 200,
                  decoration: const BoxDecoration(
                      color: Colors.pink, shape: BoxShape.circle),
                  alignment: Alignment.center,
                  child: Text(
                    // ignore: unnecessary_null_comparison
                    ratingValue != null
                        ? ratingValue.toString()
                        : 'How\'d I do?',
                    style: const TextStyle(color: Colors.white, fontSize: 30),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
