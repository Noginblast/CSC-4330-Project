import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ratr_dating/styleguide/palette.dart';

class UserTags {
  final String userID;
  List<String> tags;
  List<String> pronouns;
  List<String> gender;
  List<String> preference;

  UserTags({
    required this.userID,
    this.tags = const [],
    this.pronouns = const [],
    this.gender = const [],
    this.preference = const [],
  });

  setupNewTags() {
    tags = [];
    pronouns = [];
    gender = [];
    preference = [];
  }
}

class Tags {
  static const List<String> possibleTags = [
    'Reading',
    'Cooking',
    'Hiking',
    'Fishing',
    'Video Games',
    'Pets',
    'Cleaning',
    'Hottubing',
    'Sushi',
    'Dancing',
    'Pina Coladas',
    'Getting Caught in the Rain',
    'Sun'
  ];
  static const List<String> possiblePronouns = [
    'He/Him',
    'She/Her',
    'They/Them',
  ];
  static const List<String> possibleGenders = [
    'Man',
    'Woman',
    'Non-Binary',
  ];
}

class TagDisplay extends StatelessWidget {
  List<String> tagList;
  TagDisplay({
    Key? key,
    required this.tagList,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return Card(
    //   margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
    //   elevation: 5,
    //   shape: RoundedRectangleBorder(
    //     borderRadius: BorderRadius.circular(20),
    //   ),
    //   color: Colors.lightBlue,
    //   child: Text('Interests'),
    // );
    List<Widget> tagListBoxes = [];
    for (var tag in tagList) {
      tagListBoxes.add(Chip(
        label: Text(tag),
        backgroundColor: Palette.kToDark,
      ));
    }
    return Wrap(
      direction: Axis.horizontal,
      spacing: 10,
      runSpacing: 10,
      children: tagListBoxes,
    );
  }
}
