import 'package:flutter/material.dart';

class BottomButtonsWidget extends StatelessWidget {
  const BottomButtonsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          CircleAvatar(
            backgroundColor: Colors.white,
            child: Icon(Icons.replay, color: Colors.yellow),
          ),
          CircleAvatar(
            backgroundColor: Colors.white,
            child: Icon(Icons.close, color: Colors.red),
          ),
          CircleAvatar(
            backgroundColor: Colors.white,
            child: Icon(Icons.star, color: Colors.blue),
          ),
          CircleAvatar(
            backgroundColor: Colors.white,
            child: Icon(Icons.favorite, color: Colors.green),
          ),
          CircleAvatar(
            backgroundColor: Colors.white,
            child: Icon(Icons.person, color: Colors.purple),
          ),
        ],
      );
}
