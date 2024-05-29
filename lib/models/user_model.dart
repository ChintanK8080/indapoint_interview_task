import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  const factory UserModel({
    required int id,
    String? name,
    String? email,
    String? relation,
    String? gender,
    String? address,
    int? house_no,
    String? street,
    String? landmark,
    String? city,
    String? state,
    int? zip_code,
    String? country,
    String? created_at,
    String? updated_at,
    String? deleted_at,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, Object?> json) =>
      _$UserModelFromJson(json);
}


