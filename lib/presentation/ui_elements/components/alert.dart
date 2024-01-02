import 'package:flutter/material.dart';

class Alert extends StatelessWidget {
  const Alert({super.key, required this.text, required this.color});

  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Row(
        children: [
          Text(text),
        ],
      ),
    );
  }
}
