import 'package:flutter/material.dart';
import 'package:vuexy_flutter/domain/core/models/profile_avatar_status.dart';
import 'package:vuexy_flutter/presentation/core/widgets/buttons/icon_button.dart';
import 'package:vuexy_flutter/presentation/core/widgets/profile_avatar.dart';

class Header extends StatelessWidget {
  Header({super.key});

  final _focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      scrolledUnderElevation: 20,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      elevation: 10,
      title: Row(
        children: [
          AppIconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: const Icon(Icons.menu)),
          AppIconButton(
              onPressed: () {
                _focusNode.requestFocus();
              },
              icon: const Icon(Icons.search)),
          Expanded(
            child: TextField(
              decoration: const InputDecoration.collapsed(
                  hintText: " Press Ctrl + K to search"),
              focusNode: _focusNode,
            ),
          ),
        ],
      ),
      actions: [
        AppIconButton(onPressed: () {}, icon: const Icon(Icons.translate)),
        AppIconButton(
            onPressed: () {}, icon: const Icon(Icons.dark_mode_outlined)),
        AppIconButton(
            onPressed: () {},
            notificationCount: 5,
            icon: const Icon(Icons.notifications_none_outlined)),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: ProfileAvatar(status: ProfileAvatarStatus.online),
        ),
      ],
    );
  }
}
