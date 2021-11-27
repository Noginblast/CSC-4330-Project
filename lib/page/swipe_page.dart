import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:ratr_dating/model/user_lib.dart';
import 'package:ratr_dating/model/user.dart';
import 'package:ratr_dating/data/users.dart';
import 'package:ratr_dating/provider/feedback_position_provider.dart';
import 'package:ratr_dating/widget/bottom_buttons_widget.dart';
import 'package:ratr_dating/widget/user_card_widget.dart';
import 'package:ratr_dating/styleguide/palette.dart';

class SwipePage extends StatefulWidget {
  const SwipePage({Key? key}) : super(key: key);

  @override
  _SwipePageState createState() => _SwipePageState();
}

// ignore: must_be_immutable
class _SwipePageState extends State<SwipePage> implements PreferredSizeWidget {
  final List<User> users = dummyUsers;

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Palette.kToDark[100],
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(75),
          child: Container(),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            children: [
              users.isEmpty
                  ? const Text(
                      'Uh Oh!!\nCome Back Tomorrow for More Matches!',
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                    )
                  : Stack(children: users.map(buildUser).toList()),
              Expanded(child: Container()),
              const BottomButtonsWidget()
            ],
          ),
        ),
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
          profile_view: null,
        ),
        feedback: Material(
          type: MaterialType.transparency,
          child: UserCardWidget(
            user: user,
            isUserInFocus: isUserInFocus,
            profile_view: null,
          ),
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
