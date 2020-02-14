// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'employees_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EmployeesResponse _$_$_EmployeesResponseFromJson(Map<String, dynamic> json) {
  return _$_EmployeesResponse(
    status: json['status'] as String,
    data: (json['data'] as List)
        ?.map((e) =>
            e == null ? null : Employee.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$_$_EmployeesResponseToJson(
        _$_EmployeesResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'data': instance.data,
    };
