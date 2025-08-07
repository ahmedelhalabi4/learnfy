import 'package:flutter/material.dart';

import '../../../../core/assets.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/widgets/primary_button.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({
    super.key,
    required this.courseImageUrl,
    required this.playLessonOnPressed,
  });

  final String courseImageUrl;
  final void Function() playLessonOnPressed;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(16.0),
          child: SizedBox(
            width: double.infinity,
            height: 300.0,
            child: Image.network(
              courseImageUrl,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          right: 0,
          left: 0,
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 8.0),
            padding: EdgeInsets.all(12.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.0),
              border: Border.all(color: AppColors.black10),
              color: AppColors.white,
            ),
            child: PrimaryButton(
              label: 'Play first lesson',
              onPressed: playLessonOnPressed,
              icon: Assets.playIcon,
            ),
          ),
        ),
      ],
    );
  }
}
