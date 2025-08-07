import 'package:flutter/material.dart';

import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_text_styles.dart';

class InstructorInfoSection extends StatelessWidget {
  const InstructorInfoSection({
    super.key,
    required this.instructorImageUrl,
    required this.instructorName,
    required this.instructorJopTitle,
    required this.profileButtonOnPressed,
  });

  final String instructorImageUrl;
  final String instructorName;
  final String instructorJopTitle;
  final void Function() profileButtonOnPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(instructorImageUrl),
            ),
            SizedBox(width: 8.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  instructorName,
                  style: AppTextStyles.bodyMediumBold,
                ),
                SizedBox(width: 5.0),
                Text(
                  instructorJopTitle,
                  style: AppTextStyles.bodySmallMedium.copyWith(
                    color: AppColors.black60,
                  ),
                ),
              ],
            ),
          ],
        ),
        SizedBox(
          height: 30.0,
          child: ElevatedButton(
            onPressed: profileButtonOnPressed,
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.primary5,
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
            child: Text(
              'visit instructor profile',
              style: AppTextStyles.bodySmallRegular.copyWith(
                color: AppColors.primary90,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
