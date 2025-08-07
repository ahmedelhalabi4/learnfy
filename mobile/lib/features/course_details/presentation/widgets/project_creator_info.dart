import 'package:flutter/material.dart';

import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_text_styles.dart';

class ProjectCreatorInfo extends StatelessWidget {
  const ProjectCreatorInfo({
    super.key,
    required this.creatorName,
    required this.creatorImage,
  });

  final String creatorName;
  final String creatorImage;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 12.0,
          backgroundImage: NetworkImage(
            creatorImage,
          ),
        ),
        SizedBox(width: 5.0),
        Text(
          creatorName,
          style: AppTextStyles.bodyMediumRegular.copyWith(
            color: AppColors.black20,
          ),
        ),
      ],
    );
  }
}
