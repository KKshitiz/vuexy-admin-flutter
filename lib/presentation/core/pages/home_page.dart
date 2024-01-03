import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:vuexy_flutter/presentation/core/widgets/footer.dart';
import 'package:vuexy_flutter/presentation/core/widgets/header.dart';
import 'package:vuexy_flutter/presentation/core/widgets/sidebar.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          const SideBar(),
          Column(
            children: [
              const Header(),
              Container(),
              const Footer(),
            ],
          ),
        ],
      ),
    );
  }
}
