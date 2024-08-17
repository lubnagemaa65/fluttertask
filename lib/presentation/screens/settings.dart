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



    return Scaffold(
     appBar: AppBar(
    title: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          onPressed: () {
            // Add logic for the icon button
          },
          icon: Icon(Icons.arrow_back_ios, color: Colors.blue),
        ),
        Expanded(
          child: Center(
            child: Text("Settings"),
          ),
        ),
      ],
    ),),
    
    
      body: Container(
        padding: EdgeInsets.all(10.0),
        margin: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SectionHeader(text: "Security Settings"),
            const SizedBox(height: 5),

Container(
  padding: EdgeInsets.all(10),
decoration: BoxDecoration(
                border:
                    Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(10) // Adding a black border
              ),
  
child: Column(
  
  children: [
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
                    text: "",
                    label: "change pin",
                    onPressed: () {},
                  ),
  ],
),
)
            ,const SizedBox(height: 15),
             CustomListItem(
              text: "password",
              label: "change password",
              onPressed: () {
              },
            ),
             const SizedBox(height: 15),
            CustomListItem(
              text: "Approved addresses",
              label: "manage",
              onPressed: () {
                
              },
            ),
             const SizedBox(height: 15),
            CustomListItem(
              text: "Security Keys",
                isLastItem: true,
              label: "add Security Keys",
              onPressed: () {
              },
            
            ),
          ],
        ),
      ),
    );
  }
}
