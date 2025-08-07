import 'package:flutter/material.dart';
import 'package:learnfy/core/theme/app_colors.dart';
import 'package:learnfy/core/theme/app_text_styles.dart';

import 'lessons_list.dart';

class LessonTab extends StatelessWidget {
  const LessonTab({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 12.0),
              Text('Course Details', style: AppTextStyles.heading6),
              SizedBox(height: 8.0),
              Text(
                'Unlock the art of storytelling through the lens! In this hands-on photography course, you’ll learn how to take stunning photos — whether you’re using a smartphone or a DSLR camera. From mastering lighting and composition to editing like a pro, this course guides you step by step to elevate your photography skills.',
                style: AppTextStyles.bodyMediumMedium.copyWith(
                  color: AppColors.black80,
                ),
              ),
              SizedBox(height: 16.0),
              Text('Lessons', style: AppTextStyles.heading6),
            ],
          ),
        ),
        LessonsList(),
      ],
    );
  }
}
