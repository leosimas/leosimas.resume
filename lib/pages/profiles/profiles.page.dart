import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:leosimas/beans/profile.dart';
import 'package:leosimas/resources/dimens.dart';
import 'package:leosimas/resources/images.dart';
import 'package:leosimas/resources/profile.dart';
import 'package:leosimas/resources/strings.dart';
import 'package:leosimas/resources/styles.dart';
import 'package:leosimas/utils/app.utils.dart';

class ProfilesPage extends StatefulWidget {
  @override
  _ProfilesPageState createState() => _ProfilesPageState();
}

class _ProfilesPageState extends State<ProfilesPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [..._buildCards(context)],
      ),
    );
  }

  List<Widget> _buildCards(BuildContext context) {
    List<Widget> list = [];

    final theme = Theme.of(context);

    ResumeData.main.profiles.asMap().forEach((index, item) {
      list.add(SizedBox(
        width: 400,
        child: Card(
          child: Container(
            padding: EdgeInsets.all(Dimens.MEDIUM),
            child: Column(
              children: [
                Images.getIcon(item, 80),
                Dimens.margin(size: Dimens.SMALL),
                Text(Strings.getProfileName(item), style: Styles.TITLE_3),
                Dimens.margin(size: Dimens.SMALL),
                FlatButton(
                    onPressed: () => _openProfile(item),
                    child: Text(
                      item.text,
                      style: TextStyle(color: theme.primaryColor),
                    ),
                )
              ],
            ),
          ),
        ),
      ));

      if (index < ResumeData.main.profiles.length - 1) {
        list.add(Dimens.margin());
      }
    });

    return list;
  }

  void _openProfile(Profile profile) {
    AppUtils.openProfile(profile);
  }
}
