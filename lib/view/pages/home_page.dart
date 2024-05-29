import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:indapoint_interview_task/app_constants/app_assets.dart';
import 'package:indapoint_interview_task/app_constants/app_colors.dart';
import 'package:indapoint_interview_task/app_constants/app_textstyles.dart';
import 'package:indapoint_interview_task/view/widgets/children_detail_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  TabController? tabController;

  _notify() {
    if (mounted) {
      setState(() {});
    }
  }

  @override
  void initState() {
    tabController = TabController(length: 4, vsync: this);
    tabController?.addListener(() {
      _notify();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        title: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Image.asset(AppAssets.appIcon)),
        actions: [
          SvgPicture.asset(AppAssets.messageIcon),
          const SizedBox(width: 16),
          SvgPicture.asset(AppAssets.notificationIcon),
          const SizedBox(width: 22),
        ],
        backgroundColor: AppColors.primaryTeal,
      ),
      body: Column(children: [
        Expanded(
            child: TabBarView(controller: tabController, children: [
          SizedBox(
            height: MediaQuery.of(context).size.height,
          ),
          ListView.separated(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            itemBuilder: (context, index) => const ChildrenDetailTile(),
            itemCount: 10,
            separatorBuilder: (context, index) => const SizedBox(height: 20),
          ),
          const SizedBox(),
          const SizedBox(),
        ])),
      ]),
      bottomNavigationBar: Container(
        height: 78,
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.symmetric(vertical: 15),
        child: TabBar(
          indicatorColor: AppColors.transparent,
          controller: tabController,
          tabs: [
            Column(
              children: [
                SvgPicture.asset(
                  AppAssets.homeIcon,
                  colorFilter: ColorFilter.mode(
                      tabController?.index == 0
                          ? AppColors.primaryTeal
                          : AppColors.lightGray,
                      BlendMode.srcIn),
                ),
                const SizedBox(height: 4),
                Text(
                  "Home",
                  style: AppTextStyle.bottomTabBarText.copyWith(
                      color: tabController?.index == 0
                          ? AppColors.primaryTeal
                          : null),
                ),
              ],
            ),
            Column(
              children: [
                SvgPicture.asset(
                  AppAssets.childrenIcon,
                  colorFilter: ColorFilter.mode(
                      tabController?.index == 1
                          ? AppColors.primaryTeal
                          : AppColors.lightGray,
                      BlendMode.srcIn),
                ),
                const SizedBox(height: 4),
                Text(
                  "Children",
                  style: AppTextStyle.bottomTabBarText.copyWith(
                      color: tabController?.index == 1
                          ? AppColors.primaryTeal
                          : null),
                ),
              ],
            ),
            Column(
              children: [
                SvgPicture.asset(
                  AppAssets.driverIcon,
                  colorFilter: ColorFilter.mode(
                      tabController?.index == 2
                          ? AppColors.primaryTeal
                          : AppColors.lightGray,
                      BlendMode.srcIn),
                ),
                const SizedBox(height: 4),
                Text(
                  "Driver",
                  style: AppTextStyle.bottomTabBarText.copyWith(
                      color: tabController?.index == 2
                          ? AppColors.primaryTeal
                          : null),
                ),
              ],
            ),
            Column(
              children: [
                SvgPicture.asset(
                  AppAssets.profileIcon,
                  colorFilter: ColorFilter.mode(
                      tabController?.index == 3
                          ? AppColors.primaryTeal
                          : AppColors.lightGray,
                      BlendMode.srcIn),
                ),
                const SizedBox(height: 4),
                Text(
                  "Profile",
                  style: AppTextStyle.bottomTabBarText.copyWith(
                      color: tabController?.index == 3
                          ? AppColors.primaryTeal
                          : null),
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: AppColors.primaryTeal,
        child: SvgPicture.asset(
          AppAssets.addIcon,
        ),
      ),
    );
  }
}
