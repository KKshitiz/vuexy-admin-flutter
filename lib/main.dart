import 'package:flutter/material.dart';
import 'package:vuexy_flutter/infrastructure/core/local_storage_service.dart';
import 'package:vuexy_flutter/presentation/core/app_widget.dart';

void main() async {
  await loadServices();
  runApp(AppWidget());
}

Future<void> loadServices() async {
  await LocalStorageService.initialize();
}
