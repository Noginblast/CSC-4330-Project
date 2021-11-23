import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:ratr_dating/model/user_lib.dart';
import 'package:ratr_dating/model/user.dart';
import 'package:ratr_dating/data/users.dart';
import 'package:ratr_dating/provider/feedback_position_provider.dart';
import 'package:ratr_dating/widget/bottom_buttons_widget.dart';
import 'package:ratr_dating/widget/user_card_widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

// ignore: must_be_immutable
class _HomePageState extends State<HomePage> implements PreferredSizeWidget {
  final List<User> users = dummyUsers;

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(100),
          child: Container(color: Colors.red),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            children: [
              users.isEmpty
                  ? const Text('No more users')
                  : Stack(children: users.map(buildUser).toList()),
              Expanded(child: Container()),
              BottomButtonsWidget()
            ],
          ),
        ),
      );

  Widget buildAppBar() => AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: const [
          Icon(Icons.chat, color: Colors.pink),
          SizedBox(width: 16),
        ],
        leading: const Icon(Icons.person, color: Colors.pink),
        title: const FaIcon(FontAwesomeIcons.fire, color: Colors.pink),
      );

  Widget buildUser(User user) {
    final userIndex = users.indexOf(user);
    final isUserInFocus = userIndex == users.length - 1;

    return Listener(
      onPointerMove: (pointerEvent) {
        final provider =
            Provider.of<FeedbackPositionProvider>(context, listen: false);
        provider.updatePosition(pointerEvent.localDelta.dx);
      },
      onPointerCancel: (_) {
        final provider =
            Provider.of<FeedbackPositionProvider>(context, listen: false);
        provider.resetPosition();
      },
      onPointerUp: (_) {
        final provider =
            Provider.of<FeedbackPositionProvider>(context, listen: false);
        provider.resetPosition();
      },
      child: Draggable(
        child: UserCardWidget(
          user: user,
          isUserInFocus: isUserInFocus,
        ),
        feedback: Material(
          type: MaterialType.transparency,
          child: UserCardWidget(user: user, isUserInFocus: isUserInFocus),
        ),
        childWhenDragging: Container(),
        onDragEnd: (details) => onDragEnd(details, user),
      ),
    );
  }

  void onDragEnd(DraggableDetails details, User user) {
    const minimumDrag = 100;
    if (details.offset.dx > minimumDrag) {
      user.isSwipedOff = true;
    } else if (details.offset.dx < -minimumDrag) {
      user.isLiked = true;
    }

    setState(() => users.remove(user));
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
