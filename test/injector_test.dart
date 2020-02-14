import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:injectable_demo/injector.dart';
import 'package:injectable_demo/services/rest_client.dart';

void main() {
  setUp(() {
    configure();
  });
  group('retrofit tests vs live api', () {
    test('should get employees from live example', () async {
      final dio = Dio();
      final restApi = RestClient(dio);
      final employees = await restApi.employees();
      expect(employees.data.length, 24);
    });
  });
  group('injector tests', () {
    test('should initialize retrofit', () {
      
    });
  });
}
