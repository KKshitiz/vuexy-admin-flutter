import 'package:flutter/material.dart';
import 'package:vuexy_flutter/domain/core/extensions.dart';
import 'package:vuexy_flutter/presentation/core/styles/colors.dart';

class ProfileAvatar extends StatelessWidget {
  const ProfileAvatar({
    super.key,
    this.size = 40,
    this.isOnline = false,
    this.onlineBadgeSize = 10,
  });

  final double size;
  final bool isOnline;
  final double onlineBadgeSize;

  @override
  Widget build(BuildContext context) {
    final Color avatarBgColor = colors.getRandomItem();
    final profileAvatar = Container(
      width: size,
      height: size,
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(color: avatarBgColor, shape: BoxShape.circle),
      child: Container(
        decoration: BoxDecoration(
          color: avatarBgColor.getLighterColor(),
          shape: BoxShape.circle,
        ),
      ),
    );

    return isOnline
        ? Badge(
            alignment: Alignment.bottomRight,
            offset: const Offset(0, 2),
            backgroundColor: Colors.transparent,
            label: Container(
              width: onlineBadgeSize,
              height: onlineBadgeSize,
              decoration: const BoxDecoration(
                color: Colors.greenAccent,
                shape: BoxShape.circle,
              ),
            ),
            child: profileAvatar,
          )
        : profileAvatar;
  }
}

const List<Color> colors = [
  AppColors.error,
  AppColors.primary,
  AppColors.info,
];
