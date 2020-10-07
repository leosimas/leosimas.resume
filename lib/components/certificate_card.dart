import 'package:flutter/material.dart';
import 'package:leosimas/beans/certificate.dart';
import 'package:leosimas/resources/dimens.dart';
import 'package:leosimas/resources/images.dart';

class CertificateCard extends StatelessWidget {
  final Certificate certificate;

  const CertificateCard({Key key, this.certificate}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 400,
      child: Card(
        child: Container(
            padding: EdgeInsets.all(Dimens.MEDIUM),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  Images.getCertificate(certificate.image),
                  height: 128,
                  width: 128,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(certificate.title, style: TextStyle(fontWeight: FontWeight.bold),),
                    IconButton(icon: Icon(Icons.open_in_new), onPressed: null)
                  ],
                ),
                Text(certificate.description)
              ],
            )),
      ),
    );
  }
}
