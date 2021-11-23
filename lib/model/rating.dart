import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double ratingValue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Ratr Dating'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(25),
          child: Center(
            child: Column(
              children: [
                Text(
                  'How\'d I do?',
                  style: TextStyle(fontSize: 24),
                ),
                SizedBox(height: 25),
                RatingBar(
                    initialRating: 0,
                    direction: Axis.horizontal,
                    allowHalfRating: false,
                    itemCount: 5,
                    ratingWidget: RatingWidget(
                        full: Icon(Icons.favorite, color: Colors.pink),
                        half: Icon(
                          Icons.favorite,
                          color: Colors.pink,
                        ),
                        empty: Icon(
                          Icons.favorite_border,
                          color: Colors.pink,
                        )),
                    onRatingUpdate: (value) {
                      setState(() {
                        ratingValue = value;
                      });
                    }),
                SizedBox(height: 25),
                Container(
                  width: 200,
                  height: 200,
                  decoration:
                      BoxDecoration(color: Colors.pink, shape: BoxShape.circle),
                  alignment: Alignment.center,
                  child: Text(
                    ratingValue != null
                        ? ratingValue.toString()
                        : 'How\'d I do?',
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
