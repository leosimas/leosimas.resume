import 'package:leosimas/beans/profile.dart';
import 'package:url_launcher/url_launcher.dart';
//import 'package:flutter/foundation.dart' show kIsWeb;


class AppUtils {

  static void openURL(String url) async {
//    if (kIsWeb) {
//      html.window.open(url, "");
//      return;
//    }

    if (await canLaunch(url)) {
      await launch(url);
    }
  }

  static void openProfile(Profile profile) async {
    String url = "";
    switch (profile.type) {
      case ProfileType.email:
        url = "mailto:" + profile.text;
        break;
      case ProfileType.linkedin:
        url = "https://linkedin.com/in/" + profile.text;
        break;
      case ProfileType.github:
        url = "https://github.com/" + profile.text;
        break;
    }

    AppUtils.openURL(url);
  }

}