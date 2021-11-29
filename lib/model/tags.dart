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
