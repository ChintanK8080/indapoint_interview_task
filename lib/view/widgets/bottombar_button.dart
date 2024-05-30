import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:indapoint_interview_task/app_constants/app_colors.dart';
import 'package:indapoint_interview_task/app_constants/app_textstyles.dart';

class BottombarButton extends StatefulWidget {
  const BottombarButton(
      {super.key,
      this.currentIndex,
      required this.buttonIndex,
      required this.text,
      required this.iconPath});
  final int? currentIndex;
  final int buttonIndex;
  final String text;
  final String iconPath;

  @override
  State<BottombarButton> createState() => _BottombarButtonState();
}

class _BottombarButtonState extends State<BottombarButton> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SvgPicture.asset(
          widget.iconPath,
          colorFilter: ColorFilter.mode(
              widget.currentIndex == widget.buttonIndex
                  ? AppColors.primaryTeal
                  : AppColors.lightGray,
              BlendMode.srcIn),
        ),
        const SizedBox(height: 4),
        Text(
          widget.text,
          style: AppTextStyle.bottomTabBarText.copyWith(
              color: widget.currentIndex == widget.buttonIndex
                  ? AppColors.primaryTeal
                  : null),
        ),
      ],
    );
  }
}
