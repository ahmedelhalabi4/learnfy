import 'package:flutter/material.dart';
import 'package:learnfy/core/theme/app_colors.dart';
import 'package:learnfy/features/course_details/presentation/widgets/lesson_tab.dart';
import 'package:learnfy/features/course_details/presentation/widgets/project_tab.dart';
import 'package:learnfy/features/course_details/presentation/widgets/tests_tab.dart';

class CourseTabs extends StatelessWidget {
  const CourseTabs({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          TabBar(
            labelColor: AppColors.black90,
            unselectedLabelColor: AppColors.black60,
            indicatorColor: AppColors.primary90,
            indicatorWeight: 2.0,
            indicatorSize: TabBarIndicatorSize.tab,
            tabs: [
              Tab(text: "Lesson"),
              Tab(text: "Project"),
              Tab(text: "Tests"),
            ],
          ),
          Expanded(
            child: TabBarView(
              children: [
                LessonTab(),
                ProjectTab(),
                TestsTab(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
