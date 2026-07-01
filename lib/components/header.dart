import 'package:flutter/material.dart';
import 'package:leosimas/components/language_selector.dart';
import 'package:leosimas/locale/locale_controller.dart';
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
    final locale = LocaleProvider.localeOf(context);
    final resume = ResumeData.forLocale(locale);

    return Container(
      padding: EdgeInsets.fromLTRB(pad, statusBarHeight + pad, pad, pad),
      height: HEIGHT + statusBarHeight,
      width: double.infinity,
      color: Colors.blue,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Center(
            child: Text(
              resume.name + (width > 600 ? ' - ${resume.title}' : ''),
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white, fontSize: Dimens.FONT_XLARGE, fontWeight: FontWeight.bold),
            ),
          ),
          const Positioned(
            right: 0,
            child: LanguageSelector(),
          ),
        ],
      ),
    );
  }
}
