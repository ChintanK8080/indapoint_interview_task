import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:indapoint_interview_task/models/user_model.dart';

part 'user_response.freezed.dart';
part 'user_response.g.dart';

@freezed
class UserResponse with _$UserResponse {
  const factory UserResponse({
    required int id,
    bool? status,
    String? token,
    UserModel? user_details,
  }) = _UserResponse;

  factory UserResponse.fromJson(Map<String, Object?> json) =>
      _$UserResponseFromJson(json);
}
