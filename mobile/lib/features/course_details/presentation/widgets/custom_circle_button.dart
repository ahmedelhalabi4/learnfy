import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/theme/app_colors.dart';

class CustomCircleButton extends StatelessWidget {
  const CustomCircleButton({
    super.key,
    required this.icon,
    required this.onPressed,
  });

  final String icon;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
      style: OutlinedButton.styleFrom(
        side: BorderSide(color: AppColors.primary90),
        shape: CircleBorder(),
      ),
      child: SvgPicture.asset(
        icon,
        width: 20.0,
        colorFilter: ColorFilter.mode(
          AppColors.primary90,
          BlendMode.srcIn,
        ),
      ),
    );
  }
}
