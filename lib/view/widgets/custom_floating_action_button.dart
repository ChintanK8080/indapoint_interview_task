import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:indapoint_interview_task/app_constants/app_assets.dart';
import 'package:indapoint_interview_task/app_constants/app_colors.dart';

class CustomFloatingButton extends StatelessWidget {
  const CustomFloatingButton({super.key, required this.onClick});
  final Function() onClick;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: onClick,
      backgroundColor: AppColors.primaryTeal,
      child: SvgPicture.asset(
        AppAssets.addIcon,
      ),
    );
  }
}
