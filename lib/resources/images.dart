import 'package:flutter/material.dart';
import 'package:leosimas/beans/certificate.dart';
import 'package:leosimas/beans/profile.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Images {

  static String getCertificate(CertificateImage certificateImage) {
    switch(certificateImage) {
      case CertificateImage.android: return "images/certified_aad.png";
      case CertificateImage.ios: return "images/udacity.png";
    }
  }

  static Widget getIcon(Profile profile, double size) {
    switch(profile.type) {
      case ProfileType.email:
        return Icon(Icons.email, size: size);
      case ProfileType.linkedin:
        return FaIcon(FontAwesomeIcons.linkedin, size: size);
      case ProfileType.github:
        return FaIcon(FontAwesomeIcons.github, size: size);
    }
  }

}