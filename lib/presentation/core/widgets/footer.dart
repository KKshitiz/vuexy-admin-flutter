import 'package:flutter/material.dart';
import 'package:vuexy_flutter/domain/core/utils.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text("© ${Utils.getCurrentYear().toString()} Made with 💓 by Kshitiz")
      ],
    );
  }
}
