import 'package:flutter/material.dart';
import 'package:leosimas/components/job_card.dart';
import 'package:leosimas/locale/locale_controller.dart';
import 'package:leosimas/resources/app_strings.dart';
import 'package:leosimas/resources/dimens.dart';
import 'package:leosimas/resources/profile.dart';
import 'package:leosimas/resources/styles.dart';

class WorkPage extends StatefulWidget {
  @override
  _WorkPageState createState() => _WorkPageState();
}

class _WorkPageState extends State<WorkPage> {
  @override
  Widget build(BuildContext context) {
    final strings = AppStrings.of(context);
    final resume = ResumeData.forLocale(LocaleProvider.localeOf(context));

    return Container(
      padding: EdgeInsets.all(Dimens.MEDIUM),
      child: Column(
        children: [
          _buildRoleCard(resume),
          Dimens.margin(),
          Text(strings.sectionExperience, textAlign: TextAlign.center, style: Styles.TITLE_2),
          Dimens.margin(),
          _buildJobCards(resume),
        ],
      ),
    );
  }

  Widget _buildRoleCard(resume) {
    final List<Widget> roleItems = resume.role.items.map<Widget>((e) => Text('- $e')).toList();
    return Card(
      child: Container(
        padding: EdgeInsets.all(Dimens.MEDIUM),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(resume.role.title, textAlign: TextAlign.center, style: Styles.TITLE_2),
            Dimens.margin(),
            ...roleItems,
            Dimens.margin(),
          ],
        ),
      ),
    );
  }

  Widget _buildJobCards(resume) {
    final List<Widget> experienceItems = [];

    resume.jobs.asMap().forEach((index, job) {
      experienceItems.add(JobCard(job: job));
      if (index < resume.jobs.length - 1) experienceItems.add(Dimens.margin());
    });

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: experienceItems,
    );
  }
}
