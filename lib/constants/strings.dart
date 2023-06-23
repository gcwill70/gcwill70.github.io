import '../models/education.dart';
import '../models/experience.dart';

class Strings {
  Strings._();

  static const String about = 'About';
  static const String me = ' Me';
  static const String firstName = 'Geoff';
  static const String lastName = 'Cramer';
  static const String headline =
      'Developer & Teacher'; //Developer with 3 years of software engineering experience and 2 years of teaching experience.';
  static const String summary =
      'M.S. in Electrical & Computer Engineering'; //'Seeking a developer experience/advocate/relations role to pursue my passion for teaching software development and supporting learners.';
  static const String experience = 'Experience';
  static const String education = 'Education';
  static const String skillsTitle = 'Skills';
  static const String rightsReserved = '';

  // Menu Items
  static const String menuHome = 'Home';
  static const String menuAbout = 'About';
  static const String menuContact = 'Contact';

  // Skills
  static const List<String> skills = [
    'Flutter',
    'Google Cloud',
    'Dart',
    'Android',
    'iOS',
    'Xamarin',
    'GitHub Actions',
    'CI/CD',
    'AWS',
    'C/C++',
    'Java',
  ];

  // Experience
  static const String experienceSummary =
      'Recent Master\'s graduate with 3+ years of professional software development experience and 2 years of teaching experience.';
  static List<Experience> experienceList = [
    Experience(
      'Fall 2021',
      'Spring 2023',
      'Purdue ECE Department',
      'Master\'s Thesis - Study of Trust & Safety Engineering in Open-source Social Media Platforms',
    ),
    Experience(
      'Fall 2021',
      'Spring 2023',
      'Purdue ECE Department',
      'Graduate Teaching Assistant - Software Course DevOps',
    ),
    Experience(
      'May 2018',
      'January 2022',
      'Magnar LLC',
      'Software Engineer',
    ),
  ];

  // Education
  static List<Education> educationList = [
    Education(
      'Fall 2021',
      'Spring 2023',
      'Purdue University',
      'M.S. in Electrical and Computer Engineering',
    ),
    Education(
      'Fall 2014',
      'Fall 2018',
      'Purdue University',
      'B.S. in Electrical Engineering',
    ),
  ];
}
