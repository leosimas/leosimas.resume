import 'package:flutter/material.dart';
import 'package:leosimas/beans/profile.dart';
import 'package:leosimas/locale/locale_controller.dart';
import 'package:leosimas/resources/app_strings.dart';
import 'package:leosimas/resources/dimens.dart';
import 'package:leosimas/resources/images.dart';
import 'package:leosimas/resources/profile.dart';
import 'package:leosimas/resources/styles.dart';
import 'package:leosimas/utils/app.utils.dart';

class ProfilesPage extends StatefulWidget {
  @override
  _ProfilesPageState createState() => _ProfilesPageState();
}

class _ProfilesPageState extends State<ProfilesPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(Dimens.MEDIUM),
      child: Column(
        children: [..._buildCards(context)],
      ),
    );
  }

  List<Widget> _buildCards(BuildContext context) {
    final List<Widget> list = [];
    final theme = Theme.of(context);
    final strings = AppStrings.of(context);
    final resume = ResumeData.forLocale(LocaleProvider.localeOf(context));

    resume.profiles.asMap().forEach((index, item) {
      list.add(SizedBox(
        width: 400,
        child: Card(
          child: Container(
            padding: EdgeInsets.all(Dimens.MEDIUM),
            child: Column(
              children: [
                Images.getIcon(item, 80),
                Dimens.margin(size: Dimens.SMALL),
                Text(_getProfileName(item, strings), style: Styles.TITLE_3),
                Dimens.margin(size: Dimens.SMALL),
                TextButton(
                  onPressed: () => _openProfile(item),
                  child: Text(item.text, style: TextStyle(color: theme.primaryColor)),
                ),
              ],
            ),
          ),
        ),
      ));

      if (index < resume.profiles.length - 1) {
        list.add(Dimens.margin());
      }
    });

    return list;
  }

  String _getProfileName(Profile profile, AppStrings strings) {
    switch (profile.type) {
      case ProfileType.email:
        return strings.profileEmail;
      case ProfileType.linkedin:
        return strings.profileLinkedIn;
      case ProfileType.github:
        return strings.profileGitHub;
    }
  }

  void _openProfile(Profile profile) {
    AppUtils.openProfile(profile);
  }
}
