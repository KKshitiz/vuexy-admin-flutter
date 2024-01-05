import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class SidebarTile extends StatelessWidget {
  const SidebarTile({
    super.key,
    this.children,
    required this.title,
    this.icon,
    this.path,
    this.badgeCount,
  });

  final String title;
  final Icon? icon;
  final String? path;
  final int? badgeCount;
  final List<SidebarTile>? children;

  @override
  Widget build(BuildContext context) {
    final bool hasChildren = children != null && children!.isNotEmpty;
    const defaultIcon = Icon(
      Icons.circle_outlined,
      size: 10,
    );
    return hasChildren
        ? ExpansionTile(
            leading: icon ?? defaultIcon,
            title: Row(
              children: [
                Expanded(child: Text(title)),
                if (badgeCount != null)
                  Badge.count(
                    count: badgeCount!,
                    largeSize: 24,
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                  ),
              ],
            ),
            children: children!,
          )
        : ListTile(
            leading: icon ?? defaultIcon,
            title: Text(title),
            onTap: () {
              if (path != null) {
                AutoRouter.of(context).navigateNamed(path!);
              }
            },
          );
  }
}
