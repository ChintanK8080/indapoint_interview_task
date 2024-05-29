import 'package:flutter/material.dart';
import 'package:indapoint_interview_task/app_constants/app_colors.dart';
import 'package:indapoint_interview_task/app_constants/app_textstyles.dart';
import 'package:indapoint_interview_task/view/widgets/login_tab.dart';
import 'package:indapoint_interview_task/view/widgets/signup_tab.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(150),
          child: AppBar(
            backgroundColor: AppColors.primaryTeal,
            flexibleSpace: SafeArea(
              child: Padding(
                padding: const EdgeInsets.only(left: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Spacer(),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                              text: "Poolit ",
                              style: AppTextStyle.appbarTitleStyle1),
                          TextSpan(
                            text: "Driver",
                            style: AppTextStyle.appbarTitleStyle2,
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 18,
                    ),
                    SizedBox(
                      width: 200,
                      child: TabBar(
                        tabs: const [
                          Tab(text: 'Login'),
                          Tab(text: 'Sign up'),
                        ],
                        unselectedLabelColor: AppColors.white.withOpacity(0.5),
                        indicatorColor: AppColors.white,
                        labelStyle: AppTextStyle.tabBarLabel,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        body:  TabBarView(
          children: [
            LoginTab(),
            SignUpTab(),
          ],
        ),
      ),
    );
  }
}
