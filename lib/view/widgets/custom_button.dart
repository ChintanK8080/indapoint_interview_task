import 'package:flutter/material.dart';
import 'package:indapoint_interview_task/app_constants/app_colors.dart';
import 'package:indapoint_interview_task/app_constants/app_textstyles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.child, required this.borderRadius, required this.onClick});
  final Widget child;
  final double borderRadius;
  final Function() onClick;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onClick,
      child: Container(
        height: 50,
        margin: const EdgeInsets.symmetric(horizontal: 24),
        width: double.infinity,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderRadius),
          color: AppColors.primaryTeal,
        ),
        child:child
      ),
    );
  }
}
