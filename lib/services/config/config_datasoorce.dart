import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
@injectable
abstract class ConfigDatasource {
  Dio get dio;

  String get baseUrl;
}


@RegisterAs(ConfigDatasource, env: 'production')
class ProductionConfigDatasource implements ConfigDatasource {
  @override
  final Dio dio;

  ProductionConfigDatasource(this.dio);

  @override
  String get baseUrl => 'https://dummy.restapiexample.com/api/v1/';
}

@RegisterAs(ConfigDatasource, env: 'staging')
class StagingConfigDatasource implements ConfigDatasource {
  @override
  final Dio dio;

  StagingConfigDatasource(this.dio);

  @override
  String get baseUrl => 'https://dummy.restapiexample.com/api/v1/';
}

@RegisterAs(ConfigDatasource, env: 'development')
class DevelopmentConfigDatasource implements ConfigDatasource {
  final Dio dio;

  DevelopmentConfigDatasource(this.dio);

  @override
  String get baseUrl => 'https://dummy.restapiexample.com/api/v1/';
}
