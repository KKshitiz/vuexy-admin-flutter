import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:vuexy_flutter/presentation/home/widgets/footer.dart';
import 'package:vuexy_flutter/presentation/home/widgets/header.dart';
import 'package:vuexy_flutter/presentation/home/widgets/sidebar/sidebar.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const SideBar(),
      body: RawKeyboardListener(
        focusNode: FocusNode(),
        onKey: (event) {
          if (event is RawKeyDownEvent) {
            debugPrint("Key down");
            if (event.logicalKey == LogicalKeyboardKey.keyK &&
                event.isControlPressed) {
              debugPrint("K + Ctrl pressed");
            }
          }
        },
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // SideBar(),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(14.0),
                child: Column(
                  children: [
                    Header(),
                    const Expanded(child: AutoRouter()),
                    const Footer(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
