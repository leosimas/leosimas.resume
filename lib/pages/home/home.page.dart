import 'package:flutter/material.dart';
import 'package:leosimas/components/certificate_card.dart';
import 'package:leosimas/resources/dimens.dart';
import 'package:leosimas/resources/profile.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(Dimens.MEDIUM),
      child: Column(
        children: [
          Text(
            ResumeData.main.fullName,
            style: TextStyle(fontSize: Dimens.FONT_LARGE, fontWeight: FontWeight.bold),
          ),
          Dimens.margin(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.android),
              Dimens.margin(),
              Icon(Icons.phone_android),
              Dimens.margin(),
              Text(ResumeData.main.title,
                  style: TextStyle(fontSize: Dimens.FONT_MEDIUM, fontWeight: FontWeight.bold))
            ],
          ),
          Dimens.margin(size: Dimens.LARGE),
          Text(ResumeData.main.intro, style: TextStyle(fontSize: Dimens.FONT_MEDIUM)),
          Dimens.margin(size: Dimens.LARGE),
          ..._buildCertificates()
        ],
      ),
    );
  }

  List<Widget> _buildCertificates() {
    List<Widget> list = [];

    ResumeData.main.certificates.asMap().forEach((index, element) {
      list.add(CertificateCard(certificate: element));
      if (index < ResumeData.main.certificates.length-1) {
        list.add(Dimens.margin());
      }
    });

    return list;
  }

}
