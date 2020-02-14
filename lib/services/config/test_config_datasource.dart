import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:mockito/mockito.dart';

import 'config_datasoorce.dart';

@RegisterAs(ConfigDatasource, env: 'test')
class MockDio extends Mock implements Dio{}
class TestConfigDatasource implements ConfigDatasource {
  @override
  String get baseUrl => 'https://localhost/api/v1/';

  @override
  Dio get dio => Dio();
}
