import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:leosimas/resources/dimens.dart';
import 'package:leosimas/resources/profile.dart';

class Header extends StatelessWidget {
  static const HEIGHT = 80.0;

  @override
  Widget build(BuildContext context) {

    final media = MediaQuery.of(context);
    final width = media.size.width;
    final statusBarHeight = media.padding.top;
    final pad = Dimens.MEDIUM;

    return Container(
      padding: EdgeInsets.fromLTRB(pad, statusBarHeight + pad, pad, pad),
      height: HEIGHT + statusBarHeight,
      width: double.infinity,
      color: Colors.blue,
      child: Container(
        child: Center(
          child: Text(
            ResumeData.main.name + ( width > 600 ? " - "+ ResumeData.main.title : "" ),
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white, fontSize: Dimens.FONT_XLARGE, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
