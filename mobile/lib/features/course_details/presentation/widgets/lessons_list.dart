import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../core/assets.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_text_styles.dart';
import 'custom_circle_button.dart';

class LessonsList extends StatelessWidget {
  const LessonsList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: 3,
      itemBuilder: (context, index) {
        return Column(
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 12.0,
                  backgroundColor: AppColors.black5,
                  child: Text(
                    '1',
                    style: AppTextStyles.bodySmallBold.copyWith(
                      color: AppColors.black60,
                    ),
                  ),
                ),
                SizedBox(width: 5.0),
                Text(
                  'introduction',
                  style: AppTextStyles.bodyMediumMedium.copyWith(
                    color: AppColors.black60,
                  ),
                ),
              ],
            ),
            ListView.separated(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (_, __) => const SizedBox(height: 12),
              itemCount: 3,
              itemBuilder: (context, index) {
                return Container(
                  padding: EdgeInsets.symmetric(vertical: 12.0),
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(color: AppColors.black20),
                    ),
                  ),
                  child: Row(
                    children: [
                      Stack(
                        children: [
                          SizedBox(
                            height: 90,
                            width: 130,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(12.0),
                              child: Image.network(
                                'https://images.unsplash.com/photo-1542038784456-1ea8e935640e?q=80&w=1770&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 90,
                            width: 130,
                            child: Align(
                              alignment: Alignment.center,
                              child: CircleAvatar(
                                radius: 18.0,
                                backgroundColor: AppColors.white,
                                child: Padding(
                                  padding: const EdgeInsets.all(11.0),
                                  child: SvgPicture.asset(
                                    Assets.playIcon,
                                    colorFilter: ColorFilter.mode(
                                      AppColors.primary90,
                                      BlendMode.srcIn,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 12.0),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'introduction: what you will learn in this course',
                              style: AppTextStyles.bodyLargeMedium,
                            ),
                            SizedBox(height: 5.0),
                            Text(
                              '01:22',
                              style: AppTextStyles.bodyMediumBold.copyWith(
                                color: AppColors.black60,
                              ),
                            ),
                          ],
                        ),
                      ),
                      CustomCircleButton(
                        icon: Assets.downloadIcon,
                        onPressed: () {},
                      ),
                    ],
                  ),
                );
              },
            ),
          ],
        );
      },
    );
  }
}
