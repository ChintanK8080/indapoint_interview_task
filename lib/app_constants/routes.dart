import 'package:get/get.dart';
import 'package:indapoint_interview_task/bindings/children_bindings.dart';
import 'package:indapoint_interview_task/bindings/user_bindings.dart';
import 'package:indapoint_interview_task/view/pages/verification_page.dart';

import '../view/pages/home_page.dart';
import '../view/pages/login_page.dart';

final routes = [
  GetPage(
    name: Routes.login,
    page: () => const LoginPage(),
    bindings: [
      UserBindings(),
    ],
  ),
  GetPage(
    name: Routes.verification,
    page: () => const VerificationPage(),
    bindings: [
      UserBindings(),
    ],
  ),
  GetPage(
    name: Routes.home,
    page: () => const HomePage(),
    bindings: [
      UserBindings(),
      ChildrensBindings(),
    ],
  ),
];

class Routes {
  static const login = "/";
  static const verification = "/verification";
  static const home = "/home";
}
