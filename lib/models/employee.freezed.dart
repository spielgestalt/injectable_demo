// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package

part of 'employee.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

Employee _$EmployeeFromJson(Map<String, dynamic> json) {
  return _Employee.fromJson(json);
}

mixin _$Employee {
  String get id;
  @JsonKey(name: 'employee_name')
  String get employeeName;

  Employee copyWith(
      {String id, @JsonKey(name: 'employee_name') String employeeName});

  Map<String, dynamic> toJson();
}

@JsonSerializable()
class _$_Employee implements _Employee {
  _$_Employee({this.id, @JsonKey(name: 'employee_name') this.employeeName});

  factory _$_Employee.fromJson(Map<String, dynamic> json) =>
      _$_$_EmployeeFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: 'employee_name')
  final String employeeName;

  @override
  String toString() {
    return 'Employee(id: $id, employeeName: $employeeName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Employee &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.employeeName, employeeName) ||
                const DeepCollectionEquality()
                    .equals(other.employeeName, employeeName)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ id.hashCode ^ employeeName.hashCode;

  @override
  _$_Employee copyWith({
    Object id = freezed,
    Object employeeName = freezed,
  }) {
    return _$_Employee(
      id: id == freezed ? this.id : id as String,
      employeeName:
          employeeName == freezed ? this.employeeName : employeeName as String,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$_EmployeeToJson(this);
  }
}

abstract class _Employee implements Employee {
  factory _Employee(
      {String id,
      @JsonKey(name: 'employee_name') String employeeName}) = _$_Employee;

  factory _Employee.fromJson(Map<String, dynamic> json) = _$_Employee.fromJson;

  @override
  String get id;
  @override
  @JsonKey(name: 'employee_name')
  String get employeeName;

  @override
  _Employee copyWith(
      {String id, @JsonKey(name: 'employee_name') String employeeName});
}
