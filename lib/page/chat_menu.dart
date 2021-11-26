import 'package:flutter/material.dart';
import 'package:ratr_dating/model/message_model.dart';
import 'package:ratr_dating/model/user.dart';

import 'chat_page.dart';


class ChatMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chat Menu'),
      ),
      body: Container(
        child: _buildContent(context),
      ),
    );
  }

  Widget _buildContent(BuildContext context) {
    return ListView.builder(
        itemCount: chats.length,
        itemBuilder: (BuildContext content, int index) {
          Message chat = chats[index];
          return ContactListTile(chat, context);
        },
    );
  }
}

class ContactListTile extends ListTile {
  ContactListTile(Message chat, BuildContext context)
      : super(
    title: Text(chat.sender.name),
    subtitle: Text(chat.text + '\n' + chat.time),
    leading: CircleAvatar(child: Text(chat.sender.name[0])),
    onTap: () {
      return ChatMenutoConvo()._gotoChat(context, chat.sender);
    }
  );


}

class ChatMenutoConvo {
  void _gotoChat(BuildContext context, User user) {
    Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => ChatScreen(user: user)));
  }
}