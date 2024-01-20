import 'package:flutter/material.dart';
import 'package:vuexy_flutter/domain/core/extensions.dart';
import 'package:vuexy_flutter/domain/core/models/profile_avatar_status.dart';
import 'package:vuexy_flutter/presentation/core/styles/colors.dart';

class ProfileAvatar extends StatelessWidget {
  const ProfileAvatar({
    super.key,
    this.size = 40,
    this.status = ProfileAvatarStatus.none,
    this.statusBadgeSize = 10,
  });

  final double size;
  final ProfileAvatarStatus status;
  final double statusBadgeSize;

  @override
  Widget build(BuildContext context) {
    final Color avatarBgColor = avatarBgcolors.getRandomItem();
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

    return status == ProfileAvatarStatus.none
        ? profileAvatar
        : Badge(
            alignment: Alignment.bottomRight,
            offset: const Offset(0, 2),
            backgroundColor: Colors.transparent,
            label: Container(
              width: statusBadgeSize,
              height: statusBadgeSize,
              decoration: BoxDecoration(
                color: avatarStatusColors[status],
                shape: BoxShape.circle,
              ),
            ),
            child: profileAvatar,
          );
  }
}

const Map<ProfileAvatarStatus, Color> avatarStatusColors = {
  ProfileAvatarStatus.away: AppColors.info,
  ProfileAvatarStatus.dnd: AppColors.error,
  ProfileAvatarStatus.online: AppColors.success,
};

const List<Color> avatarBgcolors = [
  AppColors.error,
  AppColors.primary,
  AppColors.info,
];
