import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_toastr/flutter_toastr.dart';
import 'package:http/http.dart' as http;
import 'package:indapoint_interview_task/app_constants/api_endpoints.dart';
import 'package:indapoint_interview_task/models/common_model/common_response.dart';
import 'package:indapoint_interview_task/models/user_model/user_model.dart';
import 'package:indapoint_interview_task/models/user_model/user_response.dart';

class UserRepository {
  Future<UserModel?> login(
      BuildContext context, String phone, String otp) async {
    final response = await http.post(
      Uri.parse(ApiEndpints.verifyOtp),
      headers: {'Content-Type': 'application/json', "Authorization": "Bearer "},
      body: jsonEncode({
        'phone': phone,
        'otp': otp,
      }),
    );

    if (response.statusCode == 200) {
      final userResponse = UserResponse.fromJson(jsonDecode(response.body));
      if (userResponse.user_details != null) {
        return userResponse.user_details;
      }
      onErrorToastr(response.body, context);

      throw Exception('Failed to login');
    } else {
      onErrorToastr(response.body, context);

      throw Exception('Failed to login');
    }
  }

  Future<void> sendOtp(BuildContext context, String phone, String courntryCode,
      Function() onSuccess) async {
    final response = await http.post(
      Uri.parse(ApiEndpints.verifyOtp),
      headers: {
        'Content-Type': 'application/json',
        "Authorization": "Bearer ",
      },
      body: jsonEncode(
        {
          "country_code": courntryCode,
          "phone": phone,
          "action": "LOGIN",
        },
      ),
    );
    log(response.body.toString());
    log(phone.toString());
    log(courntryCode.toString());

    if (response.statusCode == 200) {
      final commonResponse = CommonResponse.fromJson(jsonDecode(response.body));
      if (commonResponse.status == true) {
        onSuccess();
      }
      onErrorToastr(response.body, context);
      throw Exception('Failed to login');
    } else {
      onErrorToastr(response.body, context);
      throw Exception('Failed to login');
    }
  }

  onErrorToastr(String? errorBody, BuildContext context) {
    if (errorBody != null) {
      try {
        final data = jsonDecode(errorBody);
        FlutterToastr.show(data["message"], context);
      } catch (e) {}
    }
  }
}
