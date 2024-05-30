import 'package:flutter/material.dart';
import 'package:flutter_toastr/flutter_toastr.dart';
import 'package:get/get.dart';
import 'package:indapoint_interview_task/app_constants/routes.dart';
import 'package:indapoint_interview_task/models/user_model/user_model.dart';
import 'package:indapoint_interview_task/repository/user_repository.dart';
import 'package:indapoint_interview_task/utility/utilities.dart';

class UserServices extends GetxController {
  UserServices({required this.userRepository});

  Rx<UserModel?> currentUser = Rx(null);
  final UserRepository userRepository;
  Rx<bool> isLoading = Rx(false);

  Future<void> login(BuildContext context,
      {required String phone, required String otp}) async {
    isLoading.value = true;
    notifyChildrens();
    if (!(await Utility.checkInternet())) {
      FlutterToastr.show("No Internet Connection", context);
      isLoading.value = false;
      notifyChildrens();
      return;
    }
    currentUser.value = (await userRepository.login(context, phone, otp));
    Get.offAllNamed(Routes.home);
    isLoading.value = false;
    notifyChildrens();
  }

  Future<void> sendOtp(BuildContext context,
      {required int phone, required int countryCode}) async {
    isLoading.value = true;
    notifyChildrens();
    if (!(await Utility.checkInternet())) {
      FlutterToastr.show("No Internet Connection", context);
      isLoading.value = false;
      notifyChildrens();
      return;
    }
    await userRepository.sendOtp(context, phone, countryCode, () {
      Get.toNamed(Routes.verification,
          arguments: {"phone": phone, "country_code": countryCode});
    });
    isLoading.value = false;
    notifyChildrens();
  }
}
