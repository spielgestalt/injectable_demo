// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package

part of 'employees_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

EmployeesResponse _$EmployeesResponseFromJson(Map<String, dynamic> json) {
  return _EmployeesResponse.fromJson(json);
}

mixin _$EmployeesResponse {
  String get status;
  List<Employee> get data;

  EmployeesResponse copyWith({String status, List<Employee> data});

  Map<String, dynamic> toJson();
}

@JsonSerializable()
class _$_EmployeesResponse implements _EmployeesResponse {
  _$_EmployeesResponse({this.status, this.data});

  factory _$_EmployeesResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_EmployeesResponseFromJson(json);

  @override
  final String status;
  @override
  final List<Employee> data;

  @override
  String toString() {
    return 'EmployeesResponse(status: $status, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _EmployeesResponse &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ status.hashCode ^ data.hashCode;

  @override
  _$_EmployeesResponse copyWith({
    Object status = freezed,
    Object data = freezed,
  }) {
    return _$_EmployeesResponse(
      status: status == freezed ? this.status : status as String,
      data: data == freezed ? this.data : data as List<Employee>,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$_EmployeesResponseToJson(this);
  }
}

abstract class _EmployeesResponse implements EmployeesResponse {
  factory _EmployeesResponse({String status, List<Employee> data}) =
      _$_EmployeesResponse;

  factory _EmployeesResponse.fromJson(Map<String, dynamic> json) =
      _$_EmployeesResponse.fromJson;

  @override
  String get status;
  @override
  List<Employee> get data;

  @override
  _EmployeesResponse copyWith({String status, List<Employee> data});
}
