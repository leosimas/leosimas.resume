import 'package:flutter/material.dart';
import 'package:leosimas/resources/profile.dart';

import 'pages/main/main.page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static const _MAX_WIDTH = 800.0;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: ResumeData.main.pageTitle,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SafeArea(
        top: false,
        bottom: true,
        child: LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxWidth > _MAX_WIDTH) {
              final margin = (constraints.maxWidth - _MAX_WIDTH) / 2;
              return Container(
                padding: EdgeInsets.only(left: margin, right: margin),
                color: Colors.black45,
                child: MainPage(),
              );
            }
            return MainPage();
          },
        ),
      ),
    );
  }
}
