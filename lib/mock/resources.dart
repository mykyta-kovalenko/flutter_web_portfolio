import '../enums/resource_category.dart';
import '../model/resource.dart';

List<Resource> getResourcesData() {
  return [
    const Resource(
      name: 'CS50: Computer Science Courses and Programs from Harvard',
      url: 'https://www.edx.org/cs50',
      resourceCategory: ResourceCategory.courses,
      description:
          'EDX\'s CS50 course was a game-changer for me, simplifying complex computer science concepts and propelling my software journey to new heights.',
    ),
    const Resource(
      name: 'Kodeco (raywenderlich.com)',
      url: 'https://www.kodeco.com/flutter/paths/flutter-fundamentals',
      resourceCategory: ResourceCategory.courses,
      description:
          'KodeCo\'s Flutter Fundamentals course made learning Flutter a breeze, breaking down key concepts and boosting my skills in building mobile apps.',
    ),
    const Resource(
      name: 'Flutter & Dart - The Complete Guide',
      url:
          'https://www.udemy.com/course/learn-flutter-dart-to-build-ios-android-apps/',
      resourceCategory: ResourceCategory.courses,
      description:
          'Udemy\'s "Learn Flutter & Dart to Build iOS & Android Apps" course gave me the confidence in the basics of Flutter and Dart, making it easy to kickstart my journey into mobile app development.',
    ),
    const Resource(
      name:
          'Cracking the Coding Interview: 189 Programming Questions and Solutions',
      url: 'https://a.co/d/5z9Kv4K',
      resourceCategory: ResourceCategory.books,
    ),
    const Resource(
      name:
          'Software Engineering at Google: Lessons Learned from Programming Over Time',
      url: 'https://a.co/d/9vmNKJQ',
      resourceCategory: ResourceCategory.books,
    ),
    const Resource(
      name: 'A Common-Sense Guide to Data Structures and Algorithms',
      url: 'https://a.co/d/asNuKyS',
      resourceCategory: ResourceCategory.books,
    ),
  ];
}
