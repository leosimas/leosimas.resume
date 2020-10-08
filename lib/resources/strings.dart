import 'package:leosimas/beans/profile.dart';

class Strings {

  static String getProfileName(Profile profile) {
    switch(profile.type) {
      case ProfileType.email: return "Email";
      case ProfileType.linkedin: return "LinkedIn";
      case ProfileType.github: return "GitHub";
    }
  }

}