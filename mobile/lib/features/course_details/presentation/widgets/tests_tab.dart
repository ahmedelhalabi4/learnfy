import 'package:flutter/material.dart';
import 'package:learnfy/core/assets.dart';
import 'package:learnfy/core/theme/app_text_styles.dart';
import 'package:learnfy/features/course_details/presentation/widgets/custom_circle_button.dart';
import '../../../../core/theme/app_colors.dart';

class TestsTab extends StatelessWidget {
  const TestsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) {
        return Container(
          padding: EdgeInsets.symmetric(vertical: 16.0),
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(color: AppColors.black20),
            ),
          ),
          child: Column(
            children: [
              Text(
                'How to Achieve Outstanding Success!',
                style: AppTextStyles.heading5,
              ),
              SizedBox(height: 12.0),
              Row(
                children: [
                  CircleAvatar(
                    radius: 14.0,
                    backgroundImage: NetworkImage(
                      'https://images.unsplash.com/photo-1633332755192-727a05c4013d?q=80&w=1180&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                    ),
                  ),
                  SizedBox(width: 5.0),
                  Text(
                    'By ',
                    style: AppTextStyles.bodyMediumRegular.copyWith(
                      color: AppColors.black40,
                    ),
                  ),
                  Text(
                    'Ahmed Mansour',
                    style: AppTextStyles.bodyMediumRegular.copyWith(
                      color: AppColors.black100,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 12.0),
              Container(
                padding: EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: AppColors.primary5,
                  borderRadius: BorderRadius.circular(20.0),
                  border: Border.all(color: AppColors.primary10),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'This text is a sample text that can be replaced in the same space. This text was generated from the Arabic text generator, where you can generate similar text or many other texts.',
                      style: AppTextStyles.bodyMediumMedium.copyWith(
                        color: AppColors.black80,
                      ),
                    ),
                    SizedBox(height: 12.0),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          radius: 15.0,
                          backgroundImage: NetworkImage(
                            'https://images.unsplash.com/photo-1639149888905-fb39731f2e6c?q=80&w=1064&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                          ),
                        ),
                        SizedBox(width: 7.0),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Mostafa Mahmoud',
                              style: AppTextStyles.heading6,
                            ),
                            Text(
                              'Answered 2 minutes ago',
                              style: AppTextStyles.bodyMediumRegular.copyWith(
                                color: AppColors.black40,
                              ),
                            ),
                          ],
                        ),
                        Spacer(),
                        CustomCircleButton(
                          icon: Assets.likeIcon,
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
