import 'package:leosimas/beans/profile.dart';
import 'package:url_launcher/url_launcher.dart';

class AppUtils {
  static void openURL(String url) async {
    final uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    }
  }

  static void openProfile(Profile profile) {
    final String url;
    switch (profile.type) {
      case ProfileType.email:
        url = 'mailto:${profile.text}';
        break;
      case ProfileType.linkedin:
        url = 'https://linkedin.com/in/${profile.text}';
        break;
      case ProfileType.github:
        url = 'https://github.com/${profile.text}';
        break;
    }
    AppUtils.openURL(url);
  }
}
