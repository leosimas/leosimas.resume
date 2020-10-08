import 'package:flutter/material.dart';
import 'package:leosimas/components/job_card.dart';
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
    return Container(
      padding: EdgeInsets.all(Dimens.MEDIUM),
      child: Column(
        children: [
          _buildRoleCard(),
          Dimens.margin(),
          Text("Experiência", textAlign: TextAlign.center, style: Styles.TITLE_2),
          Dimens.margin(),
          _buildJobCards(),
        ],
      ),
    );
  }

  _buildRoleCard() {
    List<Widget> roleItems = ResumeData.main.role.items.map((e) => Text("- " + e)).toList();
    return Card(
      child: Container(
        padding: EdgeInsets.all(Dimens.MEDIUM),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(ResumeData.main.role.title, textAlign: TextAlign.center, style: Styles.TITLE_2),
            Dimens.margin(),
            ...roleItems,
            Dimens.margin(),
          ],
        ),
      ),
    );
  }

  _buildJobCards() {
    List<Widget> experienceItems = [];

    ResumeData.main.jobs.asMap().forEach((index, job) {
      experienceItems.add(JobCard(
        job: job,
      ));
      if (index < ResumeData.main.jobs.length - 1) experienceItems.add(Dimens.margin());
    });

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: experienceItems,
    );
  }
}
