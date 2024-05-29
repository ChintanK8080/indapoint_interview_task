import 'package:get/get.dart';
import 'package:indapoint_interview_task/repository/childrens_repository.dart';
import 'package:indapoint_interview_task/services/children_services.dart';

class ChildrensBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
        () => ChildrenServices(childrenRepository: ChildrenRepository()));
  }
}
