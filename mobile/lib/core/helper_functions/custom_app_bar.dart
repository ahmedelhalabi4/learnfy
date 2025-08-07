import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:learnfy/core/assets.dart';
import 'package:learnfy/core/theme/app_colors.dart';

import '../theme/app_text_styles.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    required this.title,
    this.suffixIcon,
  });

  final String title;
  final Widget? suffixIcon;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: kToolbarHeight,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        color: AppColors.white,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Center(
              child: Text(title, style: AppTextStyles.heading4),
            ),

            Align(
              alignment: Alignment.centerLeft,
              child: Navigator.of(context).canPop()
                  ? GestureDetector(
                      onTap: () => Navigator.of(context).pop(),
                      child: SvgPicture.asset(Assets.arrowBackIcon),
                    )
                  : null,
            ),

            Align(alignment: Alignment.centerRight, child: suffixIcon),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
