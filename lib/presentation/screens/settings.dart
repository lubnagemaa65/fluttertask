import 'package:flutter/material.dart';
import 'package:fluttertask/presentation/widgets/customItemList.dart';
import 'package:fluttertask/presentation/widgets/sectionHeader.dart';
import 'package:fluttertask/presentation/widgets/toggleButton.dart';

import '../widgets/textbuttonWidget.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool faceIdValue = true; // Primary state for Face ID is active
  bool pinValue = false; // Primary state for PIN is inactive

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;



    return Scaffold(
      appBar: AppBar(
        title: const Text("Settings"),
        actions: [
          IconButton(
            icon: const Icon(Icons.arrow_back_ios, color: Colors.blue),
            onPressed: () {
            },
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SectionHeader(text: "Security Settings"),
            const SizedBox(height: 5),

            ToggleButton(
              text: "face id",
              value: faceIdValue,
              onChanged: (newValue) {
                setState(() {
                  faceIdValue = newValue;
                });
              },
            ),
            const SizedBox(height: 5),

            ToggleButton(
              text: "pin",
              value: pinValue,
              onChanged: (newValue) {
                setState(() {
                  pinValue = newValue;
                });
              },
            ),
            const SizedBox(height: 5),
            CustomListItem(
              label: "change pin",
              onPressed: () {
                // Add logic for changing password
              },
            ),
            const SizedBox(height: 15),
             CustomListItem(
              label: "Change Password",
              onPressed: () {
                // Add logic for changing password
              },
            ),
             const SizedBox(height: 15),
            CustomListItem(
              label: "Manage",
              onPressed: () {
                
              },
            ),
             const SizedBox(height: 15),
            CustomListItem(
                isLastItem: true,
              label: "Add Security Keys",
              onPressed: () {
              },
            
            ),
          ],
        ),
      ),
    );
  }
}
