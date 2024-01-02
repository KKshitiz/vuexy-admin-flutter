import 'package:flutter/material.dart';

class SideBar extends StatelessWidget {
  const SideBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      child: ListView(
        children: const [
          ExpansionTile(
            title: Text("Dashboards"),
          ),
          ExpansionTile(
            title: Text("Front pages"),
          ),
        ],
      ),
    );
  }
}
