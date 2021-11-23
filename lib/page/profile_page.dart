import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ProfileInfo extends StatefulWidget {
  const ProfileInfo({Key? key}) : super(key: key);

  @override
  _ProfileInfoState createState() => _ProfileInfoState();
}

class _ProfileInfoState extends State<ProfileInfo> {
  final nameFieldController = TextEditingController();
  String name = "";
  @override
  void initState() {
    super.initState();

    SharedPreferences.getInstance().then((prefValue) => {
          setState(() {
            name = prefValue.getString('name') ?? "";
            nameFieldController.text = name;
          })
        });

    nameFieldController.addListener(() {
      setNickname();
    });
  }

  void saveNickname() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString('name', name);
  }

  setNickname() async {
    setState(() {
      name = nameFieldController.text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Text("Nickname: $name"),
            TextField(
              enabled: true,
              controller: nameFieldController,
            ),
            Container(
                margin: const EdgeInsets.only(top: 20.0),
                child: ElevatedButton(
                  onPressed: () {
                    saveNickname();
                    const snackBar = SnackBar(
                      content: Text('Updated username!'),
                    );
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  },
                  child: const Text('Update'),
                ))
          ],
        ),
      ),
    );
  }
}
