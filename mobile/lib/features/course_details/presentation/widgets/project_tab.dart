import 'package:flutter/material.dart';
import 'package:learnfy/core/theme/app_text_styles.dart';
import 'package:learnfy/features/course_details/presentation/widgets/projects_list.dart';

class ProjectTab extends StatelessWidget {
  const ProjectTab({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 16.0),
              Text(
                'Student Projects',
                style: AppTextStyles.heading5,
              ),
              SizedBox(height: 12.0),
            ],
          ),
        ),
        ProjectsList(),
      ],
    );
  }
}
