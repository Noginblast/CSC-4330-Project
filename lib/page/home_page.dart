import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:ratr_dating/data/ratings.dart';
import 'package:ratr_dating/model/user_lib.dart';
import 'package:ratr_dating/model/user.dart';
import 'package:ratr_dating/data/users.dart';
import 'package:ratr_dating/page/edit_page.dart';
import 'package:ratr_dating/page/opaque_image.dart';
import 'package:ratr_dating/page/profile_info_big_card.dart';
import 'package:ratr_dating/page/profile_info_rating_card.dart';
import 'package:ratr_dating/page/profile_info_tag_card.dart';
import 'package:ratr_dating/page/profile_view.dart';
import 'package:ratr_dating/provider/feedback_position_provider.dart';
import 'package:ratr_dating/styleguide/colors.dart';
import 'package:ratr_dating/styleguide/palette.dart';
import 'package:ratr_dating/widget/bottom_buttons_widget.dart';
import 'package:ratr_dating/widget/user_card_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

// ignore: must_be_immutable
class _HomePageState extends State<HomePage> implements PreferredSizeWidget {
  final currentUser = loggedInUser;

  @override
  Widget build(BuildContext context) => Scaffold(
        // backgroundColor: Palette.kToDark[100],
        backgroundColor: primaryColor,
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(0),
          child: Container(color: Colors.transparent),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8),
          child: SingleChildScrollView(
            child: Stack(
              children: <Widget>[
                Container(
                  height: 1300,
                  child: Column(
                    children: <Widget>[
                      Expanded(
                        flex: 4,
                        child: Stack(
                          children: <Widget>[
                            OpaqueImage(
                              imageUrl: AssetImage(loggedInUser.imgUrl),
                              user: loggedInUser,
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 9,
                        child: Container(
                          // color: Palette.kToDark[300],
                          color: secondaryColor,
                          child: Table(
                            children: [
                              TableRow(
                                children: [
                                  ProfileInfoBigCard(
                                    firstText: loggedInUser.name,
                                    secondText: loggedInUser.bio,
                                    icon: const Icon(
                                      Icons.description,
                                      color: Colors.purple,
                                    ),
                                  ),
                                ],
                              ),
                              TableRow(
                                children: [
                                  ProfileInfoRatingCard(
                                      ratingType1: 'Conversation',
                                      ratingType2: 'Respect',
                                      ratingType3: 'Humor',
                                      ratingData: loggedInUser.ratings)
                                ],
                              ),
                              TableRow(
                                children: [
                                  ProfileInfoTagCard(
                                      userTags: loggedInUser.userTags)
                                ],
                              ),
                              TableRow(
                                children: [
                                  IconButton(
                                    onPressed: tempFunc,
                                    icon: const Icon(Icons.settings),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomButtonsWidget(),
      );

  // Widget buildAppBar() => AppBar(
  //       centerTitle: true,
  //       backgroundColor: Colors.white,
  //       elevation: 0,
  //       actions: const [
  //         Icon(Icons.chat, color: Colors.pink),
  //         SizedBox(width: 16),
  //       ],
  //       leading: const Icon(Icons.person, color: Colors.pink),
  //       title: const FaIcon(FontAwesomeIcons.fire, color: Colors.pink),
  //     );

  void tempFunc() {
    Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => EditPage(
              user: loggedInUser,
            )));
  }

  @override
  Element createElement() {
    // TODO: implement createElement
    throw UnimplementedError();
  }

  @override
  List<DiagnosticsNode> debugDescribeChildren() {
    // TODO: implement debugDescribeChildren
    throw UnimplementedError();
  }

  @override
  // TODO: implement key
  Key? get key => throw UnimplementedError();

  @override
  // TODO: implement preferredSize
  Size get preferredSize => throw UnimplementedError();

  @override
  String toStringDeep(
      {String prefixLineOne = '',
      String? prefixOtherLines,
      DiagnosticLevel minLevel = DiagnosticLevel.debug}) {
    // TODO: implement toStringDeep
    throw UnimplementedError();
  }

  @override
  String toStringShallow(
      {String joiner = ', ',
      DiagnosticLevel minLevel = DiagnosticLevel.debug}) {
    // TODO: implement toStringShallow
    throw UnimplementedError();
  }
}
