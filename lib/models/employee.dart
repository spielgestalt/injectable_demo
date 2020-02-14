import 'package:freezed_annotation/freezed_annotation.dart';

part 'employee.freezed.dart';

part 'employee.g.dart';

@freezed
abstract class Employee with _$Employee {
  factory Employee(
      {String id,
      @JsonKey(name: 'employee_name') String employeeName}) = _Employee;

  factory Employee.fromJson(Map<String, dynamic> json) =>
      _$EmployeeFromJson(json);
}
