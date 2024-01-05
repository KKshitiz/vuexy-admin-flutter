import 'package:flutter/material.dart';
import 'package:vuexy_flutter/presentation/core/widgets/buttons/icon_button.dart';
import 'package:vuexy_flutter/presentation/core/widgets/profile_avatar.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        child: Row(
          children: [
            AppIconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
            AppIconButton(onPressed: () {}, icon: const Icon(Icons.search)),
            AppIconButton(onPressed: () {}, icon: const Icon(Icons.translate)),
            AppIconButton(
                onPressed: () {}, icon: const Icon(Icons.dark_mode_outlined)),
            AppIconButton(
                onPressed: () {},
                notificationCount: 5,
                icon: const Icon(Icons.notifications_none_outlined)),
            const ProfileAvatar(isOnline: true),
          ],
        ),
      ),
    );
  }
}
