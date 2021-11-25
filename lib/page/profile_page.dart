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
      setName();
    });
  }

  void saveName() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString('name', name);
  }

  setName() async {
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
            Text("You've set this as your name: $name"),
            TextField(
              enabled: true,
              controller: nameFieldController,
            ),
            Container(
                margin: const EdgeInsets.only(top: 20.0),
                child: ElevatedButton(
                  onPressed: () {
                    saveName();
                    const snackBar = SnackBar(
                      content: Text("Updated name!"),
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

class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  List<Map> pronouns = [
    {"name": "He/him/his", "isChecked": false},
    {"name": "She/her/hers", "isChecked": false},
    {
      "name": "They/them/theirs",
      "isChecked": false,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pronoun Selection'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const Text(
              'Select your pronouns',
              style: TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 10),
            const Divider(),
            const SizedBox(height: 10),

            // The checkboxes will be here
            Column(
                children: pronouns.map((selection) {
              return CheckboxListTile(
                  value: selection["isChecked"],
                  title: Text(selection["name"]),
                  onChanged: (newValue) {
                    setState(() {
                      selection["isChecked"] = newValue;
                    });
                  });
            }).toList()),

            // Display the result here
            const SizedBox(height: 10),
            const Divider(),
            const SizedBox(height: 10),
            Wrap(
              children: pronouns.map((selection) {
                if (selection["isChecked"] == true) {
                  return Card(
                    elevation: 3,
                    color: Colors.amber,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(selection["name"]),
                    ),
                  );
                }
                return Container();
              }).toList(),
            )
          ]),
        ),
      ),
    );
  }
}
