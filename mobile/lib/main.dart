import 'package:flutter/material.dart';
import 'package:learnfy/core/theme/app_theme.dart';
import 'package:learnfy/features/course_details/presentation/views/course_details_page.dart';

void main() {
  runApp(const Learnfy());
}

class Learnfy extends StatelessWidget {
  const Learnfy({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightMode,
      home: CourseDetailsPage(),
    );
  }
}
