import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ToggleButton extends StatelessWidget {
  final String text;
  final bool value;
  final ValueChanged<bool>? onChanged;

  ToggleButton({required this.text, required this.value, this.onChanged});

  @override
  Widget build(BuildContext context) {
    Color activeColor = value ?   Colors.white: Colors.green;
    Color activeTrackColor = value ? Colors.green : Colors.white;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(child: Text(text)),
        Switch(
          value: value,
          onChanged: onChanged,
          activeTrackColor: activeTrackColor,
          activeColor: activeColor,
          inactiveTrackColor: Colors.white,
        ),
      ],
    );
  }
}
