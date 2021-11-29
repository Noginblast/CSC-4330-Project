import 'package:flutter/material.dart';
import 'package:ratr_dating/model/message_model.dart';
import 'package:ratr_dating/model/user.dart';
import 'package:ratr_dating/styleguide/palette.dart';
import 'package:ratr_dating/widget/bottom_buttons_widget.dart';

import 'chat_page.dart';

class ChatMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.kToDark[50],
      appBar: AppBar(
        title: Text('Chat Menu'),
        automaticallyImplyLeading: false,
      ),
      body: Container(
        child: _buildContent(context),
      ),
      bottomNavigationBar: BottomButtonsWidget(),
    );
  }

  Widget _buildContent(BuildContext context) {
    return ListView.separated(
      padding: EdgeInsets.all(8),
      itemCount: chats.length,
      itemBuilder: (BuildContext content, int index) {
        Message chat = chats[index];
        return ContactListTile(chat, context);
      }, separatorBuilder: (BuildContext context, int index) => const Divider(),
    );
  }
}

class ContactListTile extends ListTile {
  ContactListTile(Message chat, BuildContext context)
      : super(
            tileColor: Colors.white70,
            title: Text(chat.sender.name),
            subtitle: Text(chat.text + '\n' + chat.time),
            leading: CircleAvatar(child: Text(chat.sender.name[0])),
            onTap: () {
              return ChatMenutoConvo()._gotoChat(context, chat.sender);
            });
}

class ChatMenutoConvo {
  void _gotoChat(BuildContext context, User user) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => ChatScreen(user: user)));
  }
}
