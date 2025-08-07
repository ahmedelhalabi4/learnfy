import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_text_styles.dart';

class CourseInfoItem extends StatelessWidget {
  const CourseInfoItem({
    super.key,
    required this.title,
    required this.icon,
  });

  final String title;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(
          icon,
          width: 22.0,
          colorFilter: ColorFilter.mode(
            AppColors.primary90,
            BlendMode.srcIn,
          ),
        ),
        SizedBox(width: 5.0),
        Text(title, style: AppTextStyles.bodyMediumBold),
        SizedBox(width: 10.0),
      ],
    );
  }
}
