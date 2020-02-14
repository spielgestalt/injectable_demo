import 'package:flutter_test/flutter_test.dart';
import 'package:injectable_demo/injector.dart';
import 'package:injectable_demo/services/config/config_datasoorce.dart';

import 'package:injectable_demo/services/rest_client.dart';

void main() {
  configure(Environment.development);
  setUp(() {

  });
  group('retrofit tests vs live api', () {
    test('should get employees from live example', () async {
      final restClient = RestClient(DevelopmentConfigDatasource());
      final employees = await restClient.employees();
      expect(employees.data.length, 24);
    });
  });
  group('injector tests', () {
    test('should initialize retrofit', () {

    });
  });
}
