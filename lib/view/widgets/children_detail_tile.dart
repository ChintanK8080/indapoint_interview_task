import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:indapoint_interview_task/app_constants/app_assets.dart';
import 'package:indapoint_interview_task/app_constants/app_colors.dart';
import 'package:indapoint_interview_task/app_constants/app_strings.dart';
import 'package:indapoint_interview_task/app_constants/app_textstyles.dart';

class ChildrenDetailTile extends StatelessWidget {
  const ChildrenDetailTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(0, 12, 0, 0),
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: const BorderRadius.all(
          Radius.circular(12),
        ),
        boxShadow: [
          BoxShadow(
            color: AppColors.black.withOpacity(0.05),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      height: 80,
                      width: 80,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(
                            "https://images.unsplash.com/photo-1503454537195-1dcabb73ffb9?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8Y2hpbGRyZW58ZW58MHx8MHx8fDA%3D",
                          ),
                          fit: BoxFit.cover,
                        ),
                        shape: BoxShape.circle,
                        color: AppColors.black,
                      ),
                    ),
                    const SizedBox(width: 16),
                    ConstrainedBox(
                      constraints: BoxConstraints(
                          maxWidth: MediaQuery.of(context).size.width * 0.45),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Candace Summers",
                            style: AppTextStyle.titleTextBold,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                          Text(
                            "${AppStrings.school.toLowerCase()}: ${"New York School"}",
                            style: AppTextStyle.textButtonStyle.copyWith(
                              color: AppColors.bodyTextGray,
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                          Text(
                            "${AppStrings.female} \u2022 10 years old",
                            style: AppTextStyle.textButtonStyle.copyWith(
                              color: AppColors.bodyTextGray,
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                const Divider(),
                const SizedBox(height: 14),
                Row(
                  children: [
                    SvgPicture.asset(AppAssets.driverIcon, width: 18),
                    const SizedBox(width: 8),
                    Text("${AppStrings.driver}: arjun",
                        style: AppTextStyle.textButtonStyle
                            .copyWith(color: AppColors.bodyTextGray)),
                  ],
                ),
                const SizedBox(
                  height: 14,
                ),
                Row(
                  children: [
                    SvgPicture.asset(AppAssets.phoneIcon, width: 18),
                    const SizedBox(width: 8),
                    Text("${AppStrings.driverPhoneNumber}: +91 123456789",
                        style: AppTextStyle.textButtonStyle
                            .copyWith(color: AppColors.bodyTextGray)),
                  ],
                ),
                const SizedBox(
                  height: 14,
                ),
                Row(
                  children: [
                    SvgPicture.asset(AppAssets.timeIcon, width: 18),
                    const SizedBox(width: 8),
                    Text("${AppStrings.schoolTimings}: 7:30 am to 12:30 pm",
                        style: AppTextStyle.textButtonStyle
                            .copyWith(color: AppColors.bodyTextGray)),
                  ],
                ),
                const SizedBox(
                  height: 14,
                ),
                Row(
                  children: [
                    SvgPicture.asset(AppAssets.numberPlateIcon, width: 18),
                    const SizedBox(width: 8),
                    Text("${AppStrings.vehicle}: Maruti Suzuki Eeco",
                        style: AppTextStyle.textButtonStyle
                            .copyWith(color: AppColors.bodyTextGray)),
                  ],
                ),
                const SizedBox(
                  height: 18,
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: (MediaQuery.of(context).size.width - 41) / 3,
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                  color: AppColors.primaryTeal,
                ),
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Text(
                  AppStrings.vehicalFees,
                  style: AppTextStyle.textButtonStyle
                      .copyWith(color: AppColors.white),
                ),
              ),
              const VerticalDivider(
                width: 0.5,
                color: AppColors.white,
              ),
              Container(
                width: (MediaQuery.of(context).size.width - 41) / 3,
                alignment: Alignment.center,
                padding: const EdgeInsets.symmetric(vertical: 20),
                decoration: const BoxDecoration(color: AppColors.primaryTeal),
                child: Text(
                  AppStrings.driverDetails,
                  style: AppTextStyle.textButtonStyle
                      .copyWith(color: AppColors.white),
                ),
              ),
              const VerticalDivider(
                width: 0.5,
                color: AppColors.white,
              ),
              Container(
                width: (MediaQuery.of(context).size.width - 41) / 3,
                alignment: Alignment.center,
                padding: const EdgeInsets.symmetric(vertical: 20),
                decoration: const BoxDecoration(
                  color: AppColors.primaryTeal,
                ),
                child: Text(
                  AppStrings.locate,
                  style: AppTextStyle.textButtonStyle
                      .copyWith(color: AppColors.white),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
