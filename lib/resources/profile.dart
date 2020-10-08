import 'package:leosimas/beans/certificate.dart';
import 'package:leosimas/beans/formation.dart';
import 'package:leosimas/beans/job.dart';
import 'package:leosimas/beans/profile.dart';
import 'package:leosimas/beans/resume.dart';
import 'package:leosimas/beans/role.dart';
import 'package:leosimas/beans/skill.dart';

class ResumeData {

  static final main = Resume(
    pageTitle: "Leonardo Simas - Mobile Developer",
    profilePic: 'http://2.gravatar.com/avatar/80198277459d874faecd8152e4fb83a4',
    name: "Leonardo",
    fullName: "Leonardo Simas Gonçalves",
    title: "Mobile Developer",
    intro: "Sou Leonardo, analista de sistemas focado em mobile.\nAdoro atuar em projetos Android e iOS com tecnologias nativas e híbridas também.",
    role: Role("Developer - Mobile", [
      "Experiência na atuação como líder técnico e tutor de equipes mobile.",
      "Experiência em análise e desenvolvimento de aplicações móveis, além de elaboração de arquitetura das soluções.",
      "Desenvolvimento de soluções nativas para Android e iOS, integração a serviços Web, Android NDK e personalização do sistema operacional Android.",
      "Desenvolvimento em tecnologias híbridas: Flutter e Ionic, para Android e iOS."
    ]),
    profiles: [
      Profile(ProfileType.email, "contato@leosimas.com"),
      Profile(ProfileType.linkedin, "leonardosimas"),
      Profile(ProfileType.github, "leosimas"),
    ],
    certificates: [
      Certificate("Associate Android Developer", "Google Certified", CertificateImage.android, "https://www.credential.net/r358j69n"),
      Certificate("iOS Developer Nanodegree", "Udacity", CertificateImage.ios, "assets/certifications/ios_nanodegree_leo.pdf"),
    ],
    jobs: [
      Job("Especialista Mobile", "Capgemini", "2019 - atual", current: true),
      Job("Analista de Sistemas Sênior", "Capgemini", "2017 - 2019"),
      Job("Analista de Sistemas Pleno", "Capgemini", "2014 - 2017"),
      Job("Analista de Sistemas Júnior", "MTM Tecnologia", "2014"),
      Job("Programador", "SENAI", "2013 - 2014"),
      Job("Programador", "CPTec - UNEB", "2012 - 2013"),
      Job("Programador", "Instituto Recôncavo de Tecnologia", "2011 - 2012"),
      Job("Estagiário", "Instituto Recôncavo de Tecnologia", "2010 - 2011"),
      Job("Desenvolvedor", "Consult Jr. - UNEB", "2008 - 2010"),
    ],
    formation: [
      Formation("Especialização em Desenvolvimento Mobile", 2019, "Universidade Estácio de Sá"),
      Formation("Bacharelado em Sistemas de Informação", 2013, "UNEB - Universidade do Estado da Bahia"),
    ],
    skills: [
      SkillCategory("Mobile", [
        Skill("Android", 90),
        Skill("iOS", 70),
        Skill("Ionic", 70),
        Skill("Cordova", 70),
        Skill("Flutter", 40),
      ]),
      SkillCategory("Programação", [
        Skill("Java", 90),
        Skill("Kotlin", 80),
        Skill("Swift", 80),
        Skill("JavaScript", 70),
        Skill("TypeScript", 70),
        Skill("Dart", 50),
      ]),
      SkillCategory("Lingua - Inglês", [
        Skill("Escrita", 80),
        Skill("Conversação", 70),
      ]),
    ]
  );

}