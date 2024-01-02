import 'package:flutter/material.dart';
import 'package:vuexy_flutter/presentation/core/widgets/footer.dart';
import 'package:vuexy_flutter/presentation/core/widgets/header.dart';
import 'package:vuexy_flutter/presentation/core/widgets/sidebar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:Row(children: [
        SideBar(),
        Column(
          children: [
            Header(),
            Container(),
            Footer(),
          ],
        ),

      ],),
    );
  }
}
