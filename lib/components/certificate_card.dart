import 'package:flutter/material.dart';
import 'package:leosimas/beans/certificate.dart';
import 'package:leosimas/resources/dimens.dart';
import 'package:leosimas/resources/images.dart';
import 'package:leosimas/utils/app.utils.dart';

class CertificateCard extends StatelessWidget {
  final Certificate certificate;
  final bool mini;

  const CertificateCard({Key key, this.certificate, this.mini: false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double imageSize = mini ? 80 : 128;

    return SizedBox(
      width: mini ? 240 : 400,
      child: Card(
        child: Container(
            padding: EdgeInsets.all(Dimens.MEDIUM),
            child: Stack(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Image.asset(
                      Images.getCertificate(certificate.image),
                      height: imageSize,
                      width: imageSize,
                    ),
                    Text(
                      certificate.title,
                      textAlign: TextAlign.center,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(certificate.description, textAlign: TextAlign.center)
                  ],
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: IconButton(icon: Icon(Icons.open_in_new), onPressed: _onLinkPress),
                ),
              ],
            ),
        ),
      ),
    );
  }

  void _onLinkPress() {
    AppUtils.openURL(certificate.url);
  }
}
