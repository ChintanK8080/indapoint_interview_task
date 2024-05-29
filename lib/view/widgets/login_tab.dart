import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:indapoint_interview_task/app_constants/app_assets.dart';
import 'package:indapoint_interview_task/app_constants/app_colors.dart';
import 'package:indapoint_interview_task/app_constants/app_textstyles.dart';
import 'package:indapoint_interview_task/view/widgets/custom_button.dart';

class LoginTab extends StatelessWidget {
  const LoginTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const SizedBox(
            height: 30,
          ),
          Text(
            'Welcome back!',
            style: AppTextStyle.titleText,
          ),
          const SizedBox(
            height: 12,
          ),
          const Text(
            'Enter your phone number to recieve a verification code to login.',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: Colors.grey,
            ),
          ),
          const SizedBox(height: 30),
          TextField(
            decoration: InputDecoration(
              prefixIconConstraints:
                  const BoxConstraints(minHeight: 15, minWidth: 18),
              prefixIcon: Padding(
                padding: const EdgeInsets.only(right: 3),
                child: SvgPicture.asset(
                  AppAssets.phoneIcon2,
                  colorFilter: const ColorFilter.mode(
                    AppColors.hintTextGray,
                    BlendMode.srcIn,
                  ),
                ),
              ),
              hintText: '  Phone Number',
              hintStyle: AppTextStyle.hintTextStyle,
              focusedBorder: const UnderlineInputBorder(
                borderSide: BorderSide(
                  color: AppColors.hintTextGray,
                ),
              ),
              border: const UnderlineInputBorder(
                borderSide: BorderSide(
                  color: AppColors.hintTextGray,
                ),
              ),
            ),
            keyboardType: TextInputType.phone,
          ),
          const SizedBox(height: 61),
          Flexible(
              child: CustomButton(
            onClick: () {},
            borderRadius: 8,
            child: Text(
              'Get Code',
              style: AppTextStyle.buttonText,
            ),
          )),
        ],
      ),
    );
  }
}
