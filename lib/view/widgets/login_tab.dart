import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:indapoint_interview_task/app_constants/app_assets.dart';
import 'package:indapoint_interview_task/app_constants/app_colors.dart';
import 'package:indapoint_interview_task/app_constants/app_strings.dart';
import 'package:indapoint_interview_task/app_constants/app_textstyles.dart';
import 'package:indapoint_interview_task/services/user_services.dart';
import 'package:indapoint_interview_task/utility/utilities.dart';
import 'package:indapoint_interview_task/view/widgets/custom_button.dart';

class LoginTab extends StatelessWidget {
  LoginTab({super.key});
  final phoneNumberController = TextEditingController();
  final globalKey = GlobalKey<FormState>();
  final controller = Get.find<UserServices>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Form(
        key: globalKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const SizedBox(
              height: 30,
            ),
            Text(
              AppStrings.welcomeBack,
              style: AppTextStyle.titleText,
            ),
            const SizedBox(
              height: 12,
            ),
            const Text(
              AppStrings.phoneNumberHint,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 30),
            TextFormField(
              controller: phoneNumberController,
              validator: (value) {
                if (!(Utility.phoneNumberValidation(value ?? ''))) {
                  return AppStrings.phoneNumberValidation;
                }
                return null;
              },
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
                hintText: " ${AppStrings.phoneNumber}",
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
                onClick: () {
                  final phoneNumber =
                      Utility.getCountryCode(phoneNumberController.text);
                  if ((globalKey.currentState?.validate() ?? false) &&
                      phoneNumber.length == 2 &&
                      phoneNumber[0] != null &&
                      phoneNumber[1] != null) {
                    controller.sendOtp(
                      context,
                      phone: phoneNumber[0]!,
                      countryCode: phoneNumber[1]!,
                    );
                  }
                },
                borderRadius: 8,
                child: Text(
                  AppStrings.getCode,
                  style: AppTextStyle.buttonText,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
