import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:indapoint_interview_task/app_constants/app_assets.dart';
import 'package:indapoint_interview_task/app_constants/app_colors.dart';
import 'package:indapoint_interview_task/app_constants/app_strings.dart';
import 'package:indapoint_interview_task/view/widgets/bottombar_button.dart';
import 'package:indapoint_interview_task/view/widgets/children_detail_tile.dart';
import 'package:indapoint_interview_task/view/widgets/custom_floating_action_button.dart';

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

  initializeController() {
    tabController = TabController(length: 4, vsync: this);
    tabController?.addListener(() {
      _notify();
    });
  }

  @override
  void initState() {
    initializeController();
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
      body: TabBarView(
        controller: tabController,
        children: [
          const SizedBox(),
          ListView.separated(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            itemBuilder: (context, index) => const ChildrenDetailTile(),
            itemCount: 10,
            separatorBuilder: (context, index) => const SizedBox(height: 20),
          ),
          // Temporary Widget For Driver and Profile Screen
          const SizedBox(),
          const SizedBox(),
        ],
      ),
      bottomNavigationBar: Container(
        height: 78,
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.symmetric(vertical: 15),
        child: TabBar(
          indicatorColor: AppColors.transparent,
          controller: tabController,
          tabs: [
            BottombarButton(
                buttonIndex: 0,
                currentIndex: tabController?.index,
                text: AppStrings.home,
                iconPath: AppAssets.homeIcon),
            BottombarButton(
              buttonIndex: 1,
              currentIndex: tabController?.index,
              text: AppStrings.children,
              iconPath: AppAssets.childrenIcon,
            ),
            BottombarButton(
              buttonIndex: 2,
              currentIndex: tabController?.index,
              text: AppStrings.driver,
              iconPath: AppAssets.driverIcon,
            ),
            BottombarButton(
              buttonIndex: 3,
              currentIndex: tabController?.index,
              text: AppStrings.profile,
              iconPath: AppAssets.profileIcon,
            ),
          ],
        ),
      ),
      floatingActionButton: CustomFloatingButton(
        onClick: () {},
      ),
    );
  }
}
