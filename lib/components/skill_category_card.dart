import 'package:flutter/material.dart';
import 'package:leosimas/beans/skill.dart';
import 'package:leosimas/resources/dimens.dart';
import 'package:leosimas/resources/styles.dart';

class SkillCategoryCard extends StatelessWidget {

  final SkillCategory category;

  const SkillCategoryCard({Key key, this.category}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 400,
      child: Card(
        child: Container(
          padding: EdgeInsets.all(Dimens.MEDIUM),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(category.name, style: Styles.TITLE_3,),
              Dimens.margin(),
              ..._buildList(context),
            ],
          ),
        ),
      ),
    );
  }

  List<Widget> _buildList(BuildContext context) {
    List<Widget> list = [];

    final theme = Theme.of(context);

    category.list.asMap().forEach((index, item) {
      list.add(Text(item.name));
      list.add(Dimens.margin(size: Dimens.SMALL));
      list.add(SizedBox(
        height: Dimens.MEDIUM,
        child: Container(
          color: theme.disabledColor,
          child: Align(
            alignment: Alignment.centerLeft,
            child: FractionallySizedBox(
              widthFactor: item.value / 100,
              child: Container(
                color: theme.accentColor,
              ),
            ),
          ),
        ),
      ));

      list.add(Dimens.margin());
    });

    return list;
  }
}
