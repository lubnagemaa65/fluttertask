import 'package:flutter/material.dart';

class CustomListItem extends StatelessWidget {
  final String label;
  final String text;
  final VoidCallback onPressed;
  final bool isLastItem;

  CustomListItem({
    required this.label,
    required this.onPressed,
    this.isLastItem = false,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(text),
        SizedBox(height: 5),
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                if (isLastItem) Icon(Icons.add, color: Colors.blue),
                Expanded(child: Text(label)),
                 Icon(Icons.arrow_forward_ios),
              ],
            ),
          ),
        ),
        SizedBox(height: 5),
      ],
    );
  }
}
