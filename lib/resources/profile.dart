import 'package:leosimas/beans/certificate.dart';
import 'package:leosimas/beans/job.dart';
import 'package:leosimas/beans/resume.dart';
import 'package:leosimas/beans/role.dart';

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
    profiles: [],
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
    ]
  );

  static final dynamic data = {
    "pageTitle": "Leonardo Simas - Mobile Developer",
    "name": "Leonardo",
    "fullName": "Leonardo Simas Gonçalves",
    "title": "Mobile Developer",
    "intro": "Sou Leonardo, analista de sistemas focado em mobile.\nAdoro atuar em projetos Android e iOS com tecnologias nativas e híbridas também.",
    "roles": [
      {
        "title": "Analista de Sistemas - Mobile",
        "text": "Experiência na atuação como líder técnico e tutor de equipes mobiles. Experiência em análise e desenvolvimento de aplicações móveis, além de elaboração de arquitetura das soluções. Desenvolvimento de soluções nativas para Android, iOS e Windows Phone, integração a serviços Web, Android NDK e personalização do sistema operacional Android. Desenvolvimento em tecnologias híbridas: Ionic, Cordova e IBM MobileFirst, para Android, iOS e Windows Phone."
      }
    ],
    "contacts": [
      { "type": "email", "text": "contato@leosimas.com"},
      { "type": "linkedin", "text": "leonardosimas"},
      { "type": "github", "text": "leosimas"}
    ],
    "certifications": [
      {
        "title": "Associate Android Developer",
        "description": "Google Certified",
        "iconClass": "android",
        "url": "https://www.credential.net/r358j69n"
      },
      {
        "title": "iOS Developer Nanodegree",
        "description": "",
        "iconClass": "udacity",
        "url": "/assets/certifications/ios_nanodegree_leo.pdf"
      }
    ],
    "formation": [
      {
        "year": 2019,
        "title": "Especialização em Desenvolvimento Mobile",
        "institute": "Universidade Estácio de Sá"
      },
      {
        "year": 2013,
        "title": "Bacharelado em Sistemas de Informação",
        "institute": "UNEB - Universidade do Estado da Bahia"
      }
    ],
    "jobs": [
      {
        "title": "Especialista Mobile",
        "company": "Capgemini",
        "period": "2019 - atual",
        "current": true
      },
      { "title": "Analista de Sistemas Sênior", "company": "Capgemini", "period": "2017 - 2019"},
      { "title": "Analista de Sistemas Pleno", "company": "Capgemini", "period": "2014 - 2017"},
      { "title": "Analista de Sistemas Júnior", "company": "MTM Tecnologia", "period": "2014"},
      { "title": "Programador", "company": "SENAI", "period": "2013 - 2014"},
      { "title": "Programador", "company": "CPTec - UNEB", "period": "2012 - 2013"},
      { "title": "Programador", "company": "Instituto Recôncavo de Tecnologia", "period": "2011 - 2012"},
      { "title": "Estagiário", "company": "Instituto Recôncavo de Tecnologia", "period": "2010 - 2011"},
      { "title": "Desenvolvedor", "company": "Consult Jr. - UNEB", "period": "2008 - 2010"}
    ],
    "skills": [
      {
        "category": "Mobile",
        "list": [
          { "name": "Android", "value": 90},
          { "name": "iOS", "value": 70},
          { "name": "Ionic", "value": 70},
          { "name": "Cordova", "value": 70},
          { "name": "Flutter", "value": 40}
        ]
      },
      {
        "category": "Programação",
        "list": [
          { "name": "Kotlin", "value": 80},
          { "name": "Java", "value": 90},
          { "name": "Swift", "value": 80},
          { "name": "JavaScript", "value": 70},
          { "name": "TypeScript", "value": 70}
        ]
      },
      {
        "category": "Língua - Inglês",
        "list": [
          { "name": "Escrita", "value": 90},
          { "name": "Conversação", "value": 80}
        ]
      }
    ]
  };


}