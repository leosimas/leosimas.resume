import 'package:flutter/foundation.dart';
import 'package:leosimas/beans/certificate.dart';
import 'package:leosimas/beans/job.dart';
import 'package:leosimas/beans/profile.dart';
import 'package:leosimas/beans/formation.dart';
import 'package:leosimas/beans/role.dart';
import 'package:leosimas/beans/skill.dart';

class Resume {
  final String pageTitle;
  final String profilePic;
  final String name;
  final String fullName;
  final String title;
  final String intro;
  final List<Role> roles;
  final List<Profile> profiles;
  final List<Certificate> certificates;
  final List<Formation> formation;
  final List<Job> jobs;
  final List<Skill> skills;

  Resume(
      {this.pageTitle,
      this.profilePic,
      this.name,
      this.fullName,
      this.title,
      this.intro,
      this.roles,
      this.profiles,
      this.certificates,
      this.formation,
      this.jobs,
      this.skills});
}
