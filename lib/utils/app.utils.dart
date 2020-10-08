import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'dart:html' as html;

class AppUtils {

  static void openURL(String url) async {
    if (kIsWeb) {
      html.window.open(url, "");
      return;
    }

    if (await canLaunch(url)) {
      await launch(url);
    }
  }

}