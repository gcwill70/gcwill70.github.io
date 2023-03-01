import '../models/education.dart';
import '../models/experience.dart';

class Strings {
  Strings._();

  static const String about = 'About';
  static const String me = ' Me';
  static const String firstName = 'Geoff';
  static const String lastName = 'Cramer';
  static const String headline =
      'Teacher and software developer with 3+ years of experience!';
  static const String summary =
      'Seeking a software developer position on a small, tight-knit team.';
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
      'Recent Master\'s graduate with 3+ years of professional software development experience.';
  static List<Experience> experienceList = [
    Experience(
      'Fall 2021',
      'Present',
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
      'Fall 2014',
      'Fall 2018',
      'Purdue University',
      'B.S. in Electrical Engineering',
    ),
    Education(
      'Fall 2021',
      'Spring 2023',
      'Purdue University',
      'M.S. in Electrical and Computer Engineering',
    ),
  ];
}
