import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:vuexy_flutter/presentation/home/widgets/footer.dart';
import 'package:vuexy_flutter/presentation/home/widgets/header.dart';
import 'package:vuexy_flutter/presentation/home/widgets/sidebar/sidebar.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      drawer: SideBar(),
      body: Row(
        children: [
          // SideBar(),
          Expanded(
            child: Column(
              children: [
                Header(),
                AutoRouter(),
                Footer(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
