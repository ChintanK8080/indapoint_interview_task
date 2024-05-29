import 'package:get/get.dart';
import 'package:indapoint_interview_task/repository/user_repository.dart';
import 'package:indapoint_interview_task/services/user_services.dart';

class UserBindings extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => UserServices(userRepository: UserRepository()));
  }
}