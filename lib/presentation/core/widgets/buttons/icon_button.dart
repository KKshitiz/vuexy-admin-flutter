import 'package:flutter/material.dart';

class AppIconButton extends StatelessWidget {
  const AppIconButton(
      {super.key,
      this.onPressed,
      required this.icon,
      this.tooltip,
      this.notificationCount});
  final void Function()? onPressed;
  final Icon icon;
  final String? tooltip;
  final int? notificationCount;

  @override
  Widget build(BuildContext context) {
    final iconButton = IconButton(
      onPressed: onPressed,
      icon: icon,
      tooltip: tooltip,
    );
    return notificationCount == null
        ? iconButton
        : Badge.count(
            count: notificationCount!,
            child: iconButton,
          );
  }
}
