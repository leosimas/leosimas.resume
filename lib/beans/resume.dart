import 'package:leosimas/beans/certificate.dart';
import 'package:leosimas/beans/formation.dart';
import 'package:leosimas/beans/job.dart';
import 'package:leosimas/beans/profile.dart';
import 'package:leosimas/beans/role.dart';
import 'package:leosimas/beans/skill.dart';

class Resume {
  final String pageTitle;
  final String profilePic;
  final String name;
  final String fullName;
  final String title;
  final String intro;
  final Role role;
  final List<Profile> profiles;
  final List<Certificate> certificates;
  final List<Formation> formation;
  final List<Job> jobs;
  final List<SkillCategory> skills;

  Resume({
    required this.pageTitle,
    required this.profilePic,
    required this.name,
    required this.fullName,
    required this.title,
    required this.intro,
    required this.role,
    required this.profiles,
    required this.certificates,
    required this.formation,
    required this.jobs,
    required this.skills,
  });
}
