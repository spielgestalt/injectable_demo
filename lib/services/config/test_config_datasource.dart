import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:injectable_demo/injector.dart';
import 'package:mockito/mockito.dart';

import 'config_datasoorce.dart';

class MockDio extends Mock implements Dio {}

@RegisterAs(ConfigDatasource, env: testing)
//BUG: This does not work
@testing
@injectable
class TestConfigDatasource implements ConfigDatasource {
  @override
  String get baseUrl => 'https://localhost/api/v1/';

  @override
  Dio get dio => MockDio();
}
