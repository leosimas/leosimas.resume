import 'package:flutter/material.dart';
import 'package:leosimas/beans/resume.dart';
import 'package:leosimas/components/header.dart';
import 'package:leosimas/resources/dimens.dart';
import 'package:leosimas/resources/profile.dart';

class HomePage extends StatefulWidget {
  final _avatarSize = 80.0;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Stack(
        children: [
          Column(
            children: [Header(), Dimens.margin(size: Dimens.LARGE), _buildContent()],
          ),
          _buildAvatar(),
        ],
      ),
    );
  }

  _buildAvatar() {
    final avatarHalfSize = widget._avatarSize / 2;

    return Container(
      margin: EdgeInsets.only(left: Dimens.MEDIUM, top: avatarHalfSize),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(avatarHalfSize),
        child: Image.network(
          'http://2.gravatar.com/avatar/80198277459d874faecd8152e4fb83a4',
          height: widget._avatarSize,
          width: widget._avatarSize,
        ),
      ),
    );
  }

  _buildContent() {
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
          Text(ResumeData.main.intro, style: TextStyle(fontSize: Dimens.FONT_MEDIUM))
        ],
      ),
    );
  }
}
