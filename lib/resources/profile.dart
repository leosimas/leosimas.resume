import 'package:flutter/material.dart';
import 'package:leosimas/beans/certificate.dart';
import 'package:leosimas/beans/formation.dart';
import 'package:leosimas/beans/job.dart';
import 'package:leosimas/beans/profile.dart';
import 'package:leosimas/beans/resume.dart';
import 'package:leosimas/beans/role.dart';
import 'package:leosimas/beans/skill.dart';

class ResumeData {
  static const _profilePic = 'https://2.gravatar.com/avatar/80198277459d874faecd8152e4fb83a4';
  static const _name = 'Leonardo';
  static const _fullName = 'Leonardo Simas Gonçalves';
  static const _title = 'Mobile Developer';

  static final _profiles = [
    Profile(ProfileType.email, 'contato@leosimas.com'),
    Profile(ProfileType.linkedin, 'leonardosimas'),
    Profile(ProfileType.github, 'leosimas'),
  ];

  static final _certificates = [
    Certificate('Associate Android Developer', 'Google Certified', CertificateImage.android, 'https://www.credential.net/r358j69n'),
    Certificate('iOS Developer Nanodegree', 'Udacity', CertificateImage.ios, 'https://raw.githubusercontent.com/leosimas/leosimas.github.io/master/assets/assets/certifications/ios_nanodegree_leo.pdf'),
  ];

  static final _pt = Resume(
    pageTitle: 'Leonardo Simas - Desenvolvedor Mobile',
    profilePic: _profilePic,
    name: _name,
    fullName: _fullName,
    title: _title,
    intro: 'Sou Leonardo, analista de sistemas focado em mobile.\nAdoro atuar em projetos Android e iOS com tecnologias nativas e híbridas também.',
    role: Role('Desenvolvedor - Mobile', [
      'Experiência na atuação como líder técnico e tutor de equipes mobile.',
      'Experiência em análise e desenvolvimento de aplicações móveis, além de elaboração de arquitetura das soluções.',
      'Desenvolvimento de soluções nativas para Android e iOS, integração a serviços Web, Android NDK e personalização do sistema operacional Android.',
      'Desenvolvimento em tecnologias híbridas: Flutter e Ionic, para Android e iOS.',
    ]),
    profiles: _profiles,
    certificates: _certificates,
    jobs: [
      Job('Desenvolvedor Master', 'CI&T', '2025 - atual', current: true),
      Job('Analista de Sistemas Sênior', 'CI&T', '2021 - 2025'),
      Job('Especialista Multiplataforma', 'Capgemini', '2019 - 2021'),
      Job('Analista de Sistemas Sênior', 'Capgemini', '2017 - 2019'),
      Job('Analista de Sistemas Pleno', 'Capgemini', '2014 - 2017'),
      Job('Analista de Sistemas Júnior', 'MTM Tecnologia', '2014'),
      Job('Programador', 'SENAI', '2013 - 2014'),
      Job('Programador', 'CPTec - UNEB', '2012 - 2013'),
      Job('Programador', 'Instituto Recôncavo de Tecnologia', '2011 - 2012'),
      Job('Estagiário', 'Instituto Recôncavo de Tecnologia', '2010 - 2011'),
      Job('Desenvolvedor', 'Consult Jr. - UNEB', '2008 - 2010'),
    ],
    formation: [
      Formation('Especialização em Desenvolvimento Mobile', 2019, 'Universidade Estácio de Sá'),
      Formation('Bacharelado em Sistemas de Informação', 2013, 'UNEB - Universidade do Estado da Bahia'),
    ],
    skills: [
      SkillCategory('Mobile', [
        Skill('Android', 90),
        Skill('iOS', 70),
        Skill('Ionic', 70),
        Skill('Cordova', 70),
        Skill('Flutter', 40),
      ]),
      SkillCategory('Programação', [
        Skill('Java', 90),
        Skill('Kotlin', 90),
        Skill('Swift', 80),
        Skill('JavaScript', 70),
        Skill('TypeScript', 70),
        Skill('Dart', 50),
      ]),
      SkillCategory('Lingua - Inglês', [
        Skill('Escrita', 80),
        Skill('Conversação', 70),
      ]),
    ],
  );

  static final _en = Resume(
    pageTitle: 'Leonardo Simas - Mobile Developer',
    profilePic: _profilePic,
    name: _name,
    fullName: _fullName,
    title: _title,
    intro: 'I\'m Leonardo, a systems analyst focused on mobile development.\nI love working on Android and iOS projects with both native and hybrid technologies.',
    role: Role('Developer - Mobile', [
      'Experience leading technical teams and mentoring mobile developers.',
      'Experience in analysis and development of mobile applications, as well as designing solution architectures.',
      'Development of native solutions for Android and iOS, web service integration, Android NDK, and Android OS customization.',
      'Development with hybrid technologies: Flutter and Ionic, for Android and iOS.',
    ]),
    profiles: _profiles,
    certificates: _certificates,
    jobs: [
      Job('Master Developer', 'CI&T', '2025 - present', current: true),
      Job('Senior Systems Analyst', 'CI&T', '2021 - 2025'),
      Job('Cross-Platform Specialist', 'Capgemini', '2019 - 2021'),
      Job('Senior Systems Analyst', 'Capgemini', '2017 - 2019'),
      Job('Mid-level Systems Analyst', 'Capgemini', '2014 - 2017'),
      Job('Junior Systems Analyst', 'MTM Tecnologia', '2014'),
      Job('Programmer', 'SENAI', '2013 - 2014'),
      Job('Programmer', 'CPTec - UNEB', '2012 - 2013'),
      Job('Programmer', 'Instituto Recôncavo de Tecnologia', '2011 - 2012'),
      Job('Intern', 'Instituto Recôncavo de Tecnologia', '2010 - 2011'),
      Job('Developer', 'Consult Jr. - UNEB', '2008 - 2010'),
    ],
    formation: [
      Formation('Specialization in Mobile Development', 2019, 'Universidade Estácio de Sá'),
      Formation('Bachelor\'s in Information Systems', 2013, 'UNEB - Universidade do Estado da Bahia'),
    ],
    skills: [
      SkillCategory('Mobile', [
        Skill('Android', 90),
        Skill('iOS', 70),
        Skill('Ionic', 70),
        Skill('Cordova', 70),
        Skill('Flutter', 40),
      ]),
      SkillCategory('Programming', [
        Skill('Java', 90),
        Skill('Kotlin', 90),
        Skill('Swift', 80),
        Skill('JavaScript', 70),
        Skill('TypeScript', 70),
        Skill('Dart', 50),
      ]),
      SkillCategory('Language - English', [
        Skill('Writing', 80),
        Skill('Speaking', 70),
      ]),
    ],
  );

  static Resume forLocale(Locale locale) =>
      locale.languageCode == 'pt' ? _pt : _en;
}
