import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class SidebarTile extends StatelessWidget {
  const SidebarTile({
    super.key,
    this.children,
    required this.title,
    this.icon,
    this.path,
  });

  final String title;
  final Icon? icon;
  final String? path;
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
            leading: icon ??
                const Icon(
                  Icons.circle_outlined,
                  size: 10,
                ),
            title: Text(title),
            onTap: () {
              if (path != null) {
                AutoRouter.of(context).navigateNamed(path!);
              }
            },
          );
  }
}
