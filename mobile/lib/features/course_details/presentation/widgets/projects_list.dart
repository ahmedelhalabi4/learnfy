import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:learnfy/features/course_details/presentation/widgets/project_creator_info.dart';

import '../../../../core/assets.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_text_styles.dart';

class ProjectsList extends StatelessWidget {
  const ProjectsList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: 5,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 20.0),
          child: Stack(
            children: [
              SizedBox(
                height: 220,
                width: double.infinity,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.network(
                    'https://images.unsplash.com/photo-1502982720700-bfff97f2ecac?q=80&w=1770&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                left: 16,
                right: 16,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Moments in Focus',
                            style: AppTextStyles.heading4.copyWith(
                              color: AppColors.white,
                            ),
                          ),
                          SizedBox(height: 5.0),
                          ProjectCreatorInfo(
                            creatorName: 'By Ahmed Mansour',
                            creatorImage:
                                'https://images.unsplash.com/photo-1633332755192-727a05c4013d?q=80&w=1180&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                          ),
                        ],
                      ),
                      ElevatedButton.icon(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.otherGrey.withAlpha(
                            200,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          padding: EdgeInsets.symmetric(horizontal: 16.0),
                        ),
                        onPressed: () {},
                        label: Text(
                          '457',
                          style: AppTextStyles.bodyMediumBold.copyWith(
                            color: AppColors.white,
                          ),
                        ),
                        icon: SvgPicture.asset(
                          Assets.loveIcon,
                          width: 18.0,
                          colorFilter: ColorFilter.mode(
                            AppColors.white,
                            BlendMode.srcIn,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
