// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:get/get.dart';
import 'package:indapoint_interview_task/repository/childrens_repository.dart';

class ChildrenServices extends GetxController {
  final ChildrenRepository childrenRepository;
  ChildrenServices({
    required this.childrenRepository,
  });
}
