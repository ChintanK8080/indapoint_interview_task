// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserModelImpl _$$UserModelImplFromJson(Map<String, dynamic> json) =>
    _$UserModelImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String?,
      email: json['email'] as String?,
      relation: json['relation'] as String?,
      gender: json['gender'] as String?,
      address: json['address'] as String?,
      house_no: (json['house_no'] as num?)?.toInt(),
      street: json['street'] as String?,
      landmark: json['landmark'] as String?,
      city: json['city'] as String?,
      state: json['state'] as String?,
      zip_code: (json['zip_code'] as num?)?.toInt(),
      country: json['country'] as String?,
      created_at: json['created_at'] as String?,
      updated_at: json['updated_at'] as String?,
      deleted_at: json['deleted_at'] as String?,
    );

Map<String, dynamic> _$$UserModelImplToJson(_$UserModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'relation': instance.relation,
      'gender': instance.gender,
      'address': instance.address,
      'house_no': instance.house_no,
      'street': instance.street,
      'landmark': instance.landmark,
      'city': instance.city,
      'state': instance.state,
      'zip_code': instance.zip_code,
      'country': instance.country,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
      'deleted_at': instance.deleted_at,
    };
