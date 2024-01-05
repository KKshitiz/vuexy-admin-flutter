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
      iconSize: 28,
      icon: icon,
      tooltip: tooltip,
    );
    return notificationCount == null
        ? iconButton
        : Badge.count(
            alignment: Alignment.topRight,
            offset: const Offset(0, 0),
            count: notificationCount!,
            padding: const EdgeInsets.symmetric(horizontal: 7),
            largeSize: 20,
            child: iconButton,
          );
  }
}
