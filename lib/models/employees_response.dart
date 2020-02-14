import 'package:freezed_annotation/freezed_annotation.dart';

import 'employee.dart';

part 'employees_response.freezed.dart';

part 'employees_response.g.dart';

@freezed
abstract class EmployeesResponse with _$EmployeesResponse {
  factory EmployeesResponse({String status, List<Employee> data}) =
      _EmployeesResponse;

  factory EmployeesResponse.fromJson(Map<String, dynamic> json) =>
      _$EmployeesResponseFromJson(json);
}
