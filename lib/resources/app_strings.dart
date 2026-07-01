import 'package:flutter/material.dart';
import 'package:leosimas/locale/locale_controller.dart';
import 'package:leosimas/resources/strings_en.dart';
import 'package:leosimas/resources/strings_pt.dart';

abstract class AppStrings {
  String get tabHome;
  String get tabWork;
  String get tabSkills;
  String get tabProfiles;

  String get sectionExperience;
  String get sectionEducation;
  String get sectionCertifications;
  String get sectionSkills;

  String get profileEmail;
  String get profileLinkedIn;
  String get profileGitHub;

  static AppStrings of(BuildContext context) {
    final locale = LocaleProvider.localeOf(context);
    return locale.languageCode == 'pt' ? StringsPt() : StringsEn();
  }
}
