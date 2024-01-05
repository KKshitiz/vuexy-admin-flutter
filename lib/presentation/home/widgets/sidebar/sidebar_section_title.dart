import 'package:flutter/material.dart';

class SidebarSectionTitle extends StatelessWidget {
  const SidebarSectionTitle({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 14, top: 20),
      child: Text(text.toUpperCase()),
    );
  }
}
