import 'package:flutter/material.dart';
import 'package:vuexy_flutter/domain/core/utils.dart';

extension ColorExtensions on Color {
  getLighterColor() {
    Color lighterColor = Color.fromARGB(
      alpha,
      (red * 1.2)
          .round()
          .clamp(0, 255), // Adjust the multiplier to make it lighter
      (green * 1.2)
          .round()
          .clamp(0, 255), // Adjust the multiplier to make it lighter
      (blue * 1.2)
          .round()
          .clamp(0, 255), // Adjust the multiplier to make it lighter
    );
    return lighterColor;
  }
}

extension ListExtensions<T> on List<T> {
  T getRandomItem() {
    final int randomIndex = Utils.getRandomNumberWithinRange(length);
    return this[randomIndex];
  }
}
