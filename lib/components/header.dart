import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:leosimas/resources/dimens.dart';
import 'package:leosimas/resources/profile.dart';

class Header extends StatelessWidget {
  static const HEIGHT = 80.0;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(Dimens.MEDIUM),
      height: HEIGHT,
      width: double.infinity,
      color: Colors.blue,
      child: Container(
//        margin: EdgeInsets.only(left: marginLeft + Dimens.MEDIUM),
        child: Center(
          child: Text(
            ResumeData.main.name + " - " + ResumeData.main.title,
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white, fontSize: Dimens.FONT_LARGE, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
