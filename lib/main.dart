import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:indapoint_interview_task/bindings/children_bindings.dart';
import 'package:indapoint_interview_task/view/pages/login_page.dart';

import 'bindings/user_bindings.dart';

void main() {
  UserBindings().dependencies();
  ChildrensBindings().dependencies();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      home: LoginPage(),
    );
  }
}
