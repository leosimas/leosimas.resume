import 'package:flutter/material.dart';
import 'package:leosimas/beans/job.dart';
import 'package:leosimas/resources/dimens.dart';

class JobCard extends StatelessWidget {
  final Job job;

  const JobCard({Key key, this.job}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                  Text(job.title, style: TextStyle(fontWeight: FontWeight.bold)),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Container(
                      color: Theme.of(context).accentColor,
                      padding: EdgeInsets.all(4),
                      child: Text(
                        job.period,
                        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: Dimens.FONT_SMALL),
                      ),
                    ),
                  )
                ],
              ),
              Dimens.margin(),
              Text(job.company)
            ],
          ),
        ),
      ),
    );
  }
}
