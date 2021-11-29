import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ratr_dating/model/tags.dart';
import 'package:ratr_dating/model/user.dart';

class EditPage extends StatefulWidget {
  final User user;

  const EditPage({Key? key, required this.user}) : super(key: key);

  @override
  _EditPageState createState() => _EditPageState();
}

class _EditPageState extends State<EditPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Profile Settings',
          ),
          bottom: const TabBar(
            tabs: [
              Tab(
                text: 'About You',
              ),
              Tab(
                text: 'Pronouns',
              ),
              Tab(
                text: 'Looking For',
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            _buildTab(Tags.possibleTags),
            _buildTab(Tags.possiblePronouns),
            _buildTab(Tags.possibleGenders),
          ],
        ),
      ),
    );
  }

  Widget _buildTab(List<String> lst) {
    List<Widget> checkboxes = [];
    for (var element in lst) {
      checkboxes.add(CheckboxListTile(
        controlAffinity: ListTileControlAffinity.leading,
        title: Text(element),
        value: (widget.user.userTags.tags.contains(element)),
        onChanged: (bool? value) {
          if (!value!) {
            setState(() {
              widget.user.userTags.tags.remove(element);
            });
          } else {
            setState(() {
              widget.user.userTags.tags.add(element);
            });
          }
        },
      ));
    }
    return SingleChildScrollView(
      child: Column(
        children: checkboxes,
      ),
    );
  }
}
