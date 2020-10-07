import 'package:leosimas/beans/certificate.dart';

class Images {

  static String getCertificate(CertificateImage certificateImage) {
    switch(certificateImage) {
      case CertificateImage.android: return "images/certified_aad.png";
      case CertificateImage.ios: return "images/udacity.png";
    }
  }

}