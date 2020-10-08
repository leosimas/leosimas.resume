import 'package:flutter/material.dart';
import 'package:leosimas/components/certificate_card.dart';
import 'package:leosimas/components/skill_category_card.dart';
import 'package:leosimas/resources/dimens.dart';
import 'package:leosimas/resources/profile.dart';
import 'package:leosimas/resources/styles.dart';

class SkillsPage extends StatefulWidget {
  @override
  _SkillsPageState createState() => _SkillsPageState();
}

class _SkillsPageState extends State<SkillsPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(Dimens.MEDIUM),
      child: Column(
        children: [
          ..._buildFormation(),
          Dimens.margin(),
          ..._buildCertificates(),
          Dimens.margin(),
          ..._buildSkills(),
        ],
      ),
    );
  }

  List<Widget> _buildFormation() {
    return [
      Text("Formação", textAlign: TextAlign.center, style: Styles.TITLE_2),
      Dimens.margin(),
      ...ResumeData.main.formation.map((f) {
        return SizedBox(
          width: 400,
          child: Card(
            child: Container(
              padding: EdgeInsets.all(Dimens.MEDIUM),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(child: Text(f.title, style: TextStyle(fontWeight: FontWeight.bold))),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Container(
                          color: Theme.of(context).accentColor,
                          padding: EdgeInsets.all(4),
                          child: Text(
                            f.year.toString(),
                            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: Dimens.FONT_SMALL),
                          ),
                        ),
                      )
                    ],
                  ),
                  Dimens.margin(),
                  Text(f.institute)
                ],
              ),
            ),
          ),
        );
      }).toList()
    ];
  }

  List<Widget> _buildCertificates() {
    List<Widget> list = [
      Text("Certificações", textAlign: TextAlign.center, style: Styles.TITLE_2),
      Dimens.margin(),
    ];

    ResumeData.main.certificates.asMap().forEach((index, element) {
      list.add(CertificateCard(certificate: element, mini: true,));
      if (index < ResumeData.main.certificates.length-1) {
        list.add(Dimens.margin());
      }
    });

    return list;
  }

  List<Widget> _buildSkills() {
    List<Widget> list = [
      Text("Habilidades", textAlign: TextAlign.center, style: Styles.TITLE_2),
      Dimens.margin(),
    ];

    ResumeData.main.skills.asMap().forEach((index, category) {
      list.add(SkillCategoryCard(category: category));

      if (index < ResumeData.main.certificates.length) {
        list.add(Dimens.margin());
      }
    });

    return list;
  }
}
