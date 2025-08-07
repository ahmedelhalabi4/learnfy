import 'package:flutter/material.dart';
import 'package:learnfy/core/assets.dart';
import 'package:learnfy/core/helper_functions/custom_app_bar.dart';
import 'package:learnfy/core/theme/app_colors.dart';
import 'package:learnfy/core/theme/app_text_styles.dart';
import 'package:learnfy/features/course_details/presentation/widgets/course_tabs.dart';

import '../widgets/course_info_item.dart';
import '../widgets/hero_section.dart';
import '../widgets/instructor_info_section.dart';

class CourseDetailsPage extends StatelessWidget {
  const CourseDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: CustomAppBar(title: 'Course Description'),
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 12.0),
                    SizedBox(
                      height: 360.0,
                      child: HeroSection(
                        courseImageUrl:
                            'https://images.unsplash.com/photo-1575936123452-b67c3203c357?q=80&w=1770&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                        playLessonOnPressed: () {},
                      ),
                    ),
                    SizedBox(height: 12.0),
                    Text(
                      'Photography: Capture and share your life',
                      style: AppTextStyles.heading3,
                    ),
                    SizedBox(height: 16.0),
                    Row(
                      children: List.generate(3, (index) {
                        List<CourseInfoItem> courseInfoItems = [
                          CourseInfoItem(
                            title: 'Entry',
                            icon: Assets.levelIcon,
                          ),
                          CourseInfoItem(
                            title: '7K Student',
                            icon: Assets.studentIcon,
                          ),
                          CourseInfoItem(title: '4.8', icon: Assets.starIcon),
                        ];
                        return CourseInfoItem(
                          title: courseInfoItems[index].title,
                          icon: courseInfoItems[index].icon,
                        );
                      }),
                    ),
                    SizedBox(height: 16.0),
                    Text(
                      'Course by',
                      style: AppTextStyles.bodyXLargeRegular.copyWith(
                        color: AppColors.black60,
                      ),
                    ),
                    SizedBox(height: 5.0),
                    InstructorInfoSection(
                      profileButtonOnPressed: () {},
                      instructorName: 'Talal Bilal',
                      instructorJopTitle: 'Photography Expert',
                      instructorImageUrl:
                          'https://images.unsplash.com/photo-1500648767791-00dcc994a43e?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTF8fHByb2ZpbGV8ZW58MHx8MHx8fDA%3D',
                    ),
                    SizedBox(height: 16.0),
                  ],
                ),
              ),
            ),
          ],
          body: CourseTabs(),
        ),
      ),
    );
  }
}
