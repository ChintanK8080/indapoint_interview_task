import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:indapoint_interview_task/app_constants/api_endpoints.dart';
import 'package:indapoint_interview_task/models/common_response.dart';
import 'package:indapoint_interview_task/models/user_model.dart';
import 'package:indapoint_interview_task/models/user_response.dart';

class UserRepository {
  Future<UserModel?> login(String phone, String otp) async {
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
      throw Exception('Failed to login');
    } else {
      throw Exception('Failed to login');
    }
  }

  Future<void> sendOtp(
      String phone, String courntryCode, Function() onSuccess) async {
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

    if (response.statusCode == 200) {
      final commonResponse = CommonResponse.fromJson(jsonDecode(response.body));
      if (commonResponse.status == true) {
        
        onSuccess();
      }
      throw Exception('Failed to login');
    } else {
      throw Exception('Failed to login');
    }
  }
}
