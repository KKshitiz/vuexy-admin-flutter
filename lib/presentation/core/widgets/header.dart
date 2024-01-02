import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        child: Row(
          children: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.dark_mode)),
          ],
        ),
      ),
    );
  }
}
