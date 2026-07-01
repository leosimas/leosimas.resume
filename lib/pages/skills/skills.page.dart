import 'package:flutter/material.dart';
import 'package:leosimas/components/certificate_card.dart';
import 'package:leosimas/components/skill_category_card.dart';
import 'package:leosimas/locale/locale_controller.dart';
import 'package:leosimas/resources/app_strings.dart';
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
    final strings = AppStrings.of(context);
    final resume = ResumeData.forLocale(LocaleProvider.localeOf(context));

    return Container(
      padding: EdgeInsets.all(Dimens.MEDIUM),
      child: Column(
        children: [
          ..._buildFormation(context, strings, resume),
          Dimens.margin(),
          ..._buildCertificates(strings, resume),
          Dimens.margin(),
          ..._buildSkills(strings, resume),
        ],
      ),
    );
  }

  List<Widget> _buildFormation(BuildContext context, AppStrings strings, resume) {
    return [
      Text(strings.sectionEducation, textAlign: TextAlign.center, style: Styles.TITLE_2),
      Dimens.margin(),
      ...resume.formation.map<Widget>((f) {
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
                          color: Theme.of(context).colorScheme.secondary,
                          padding: EdgeInsets.all(4),
                          child: Text(
                            f.year.toString(),
                            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: Dimens.FONT_SMALL),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Dimens.margin(),
                  Text(f.institute),
                ],
              ),
            ),
          ),
        );
      }).toList(),
    ];
  }

  List<Widget> _buildCertificates(AppStrings strings, resume) {
    final List<Widget> list = [
      Text(strings.sectionCertifications, textAlign: TextAlign.center, style: Styles.TITLE_2),
      Dimens.margin(),
    ];

    resume.certificates.asMap().forEach((index, element) {
      list.add(CertificateCard(certificate: element, mini: true));
      if (index < resume.certificates.length - 1) {
        list.add(Dimens.margin());
      }
    });

    return list;
  }

  List<Widget> _buildSkills(AppStrings strings, resume) {
    final List<Widget> list = [
      Text(strings.sectionSkills, textAlign: TextAlign.center, style: Styles.TITLE_2),
      Dimens.margin(),
    ];

    resume.skills.asMap().forEach((index, category) {
      list.add(SkillCategoryCard(category: category));
      if (index < resume.skills.length - 1) {
        list.add(Dimens.margin());
      }
    });

    return list;
  }
}
