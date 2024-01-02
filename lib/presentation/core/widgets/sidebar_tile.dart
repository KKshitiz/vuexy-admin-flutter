import 'package:flutter/material.dart';

class SidebarTile extends StatelessWidget {
  const SidebarTile({
    super.key,
    this.children,
    required this.title,
    this.icon,
  });

  final String title;
  final Icon? icon;
  final List<SidebarTile>? children;

  @override
  Widget build(BuildContext context) {
    final bool hasChildren = children != null && children!.isNotEmpty;
    return hasChildren
        ? ExpansionTile(
            leading: icon,
            title: Text(title),
            children: children!,
          )
        : ListTile(
            leading: icon,
            title: Text(title),
          );
  }
}
