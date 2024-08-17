import 'package:flutter/material.dart';

class ToggleButton extends StatelessWidget {
  final String text;
  final bool value;
  final ValueChanged<bool>? onChanged;

  ToggleButton({required this.text, required this.value, this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(text),
        Switch(
          value: value,
          onChanged: onChanged,
          activeTrackColor: Colors.green,
          activeColor: Colors.green,
          inactiveTrackColor: Colors.white,
        ),
      ],
    );
  }
}
