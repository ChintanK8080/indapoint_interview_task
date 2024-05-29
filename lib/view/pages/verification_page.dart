import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:indapoint_interview_task/app_constants/app_colors.dart';
import 'package:indapoint_interview_task/app_constants/app_textstyles.dart';
import 'package:indapoint_interview_task/services/user_services.dart';
import 'package:indapoint_interview_task/view/widgets/custom_button.dart';
import 'package:otp_text_field/otp_field.dart';

class VerificationPage extends StatelessWidget {
  VerificationPage({super.key});
  final controller = Get.find<UserServices>();
  String otp = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        backgroundColor: AppColors.white,
        shadowColor: AppColors.transparent,
        leading: const Padding(
          padding: EdgeInsets.only(top: 33),
          child: Icon(
            Icons.arrow_back,
            color: AppColors.black,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 30,
            ),
            Text(
              'Verification Code',
              style: AppTextStyle.titleText,
            ),
            const SizedBox(
              height: 12,
            ),
            const Text(
              'Enter the verification code that has been sent to the number +91 12345678.',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 30),
            OTPTextField(
              onChanged: (value) {
                otp = value;
              },
              width: MediaQuery.of(context).size.width,
              fieldWidth: 70,
              length: 4,
            ),
            const SizedBox(
              height: 74,
            ),
            Flexible(
              child: CustomButton(
                borderRadius: 30,
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  const Icon(Icons.check_circle,
                      color: AppColors.white, size: 15),
                  const SizedBox(width: 8),
                  Text(
                    'Verify Code',
                    style: AppTextStyle.buttonText,
                  ),
                ]),
                onClick: () async {
                  controller.login(context,
                      phone: Get.arguments["phone"], otp: otp);
                },
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            Center(
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                        text: "Didn't receive the code? ",
                        style: AppTextStyle.textButtonStyle),
                    TextSpan(
                      text: "Resend Code.",
                      style: AppTextStyle.textButtonStyle.copyWith(
                        color: AppColors.primaryTeal,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
