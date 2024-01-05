import 'dart:io';
import 'dart:math';

import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart' as url_launcher;
import 'package:vuexy_flutter/domain/core/app_logger.dart';

class Utils {
  static int getCurrentYear() {
    return DateTime.now().year;
  }

  static int getRandomNumberWithinRange(int end, [int start = 0]) {
    return Random().nextInt(end - start) + start;
  }

  static Future<bool> launchUrl(String url) async {
    try {
      final Uri uri = Uri.parse(url);
      return await url_launcher.launchUrl(uri);
    } on FormatException {
      logger.error("Invalid url: $url");
      return false;
    } on PlatformException {
      logger.error(
          "Unable to launch url: $url on platform: ${Platform.operatingSystem}");
      return false;
    } catch (e) {
      logger.error("Error while launching url: $url, error: $e");
      return false;
    }
  }
}
