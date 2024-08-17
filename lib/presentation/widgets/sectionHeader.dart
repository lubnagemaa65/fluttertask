import 'package:flutter/material.dart';

class SectionHeader extends StatelessWidget {
  final String text;

  const SectionHeader({required this.text});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        text,
        style: const TextStyle(fontSize: 20,),
      ),
    );
  }
}
