import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:injectable_demo/injector.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

abstract class ConfigDatasource {
  Dio get dio;

  String get baseUrl;
}

@RegisterAs(ConfigDatasource, env: production)
//BUG: This does not work
@production
@injectable
class ProductionConfigDatasource implements ConfigDatasource {
  @override
  final Dio dio;

  ProductionConfigDatasource(this.dio);

  @override
  String get baseUrl => 'https://dummy.restapiexample.com/api/v1/';
}

@RegisterAs(ConfigDatasource, env: staging)
//BUG: This does not work
@staging
@injectable
class StagingConfigDatasource implements ConfigDatasource {
  @override
  final Dio dio;

  StagingConfigDatasource(this.dio);

  @override
  String get baseUrl => 'https://dummy.restapiexample.com/api/v1/';
}

@RegisterAs(ConfigDatasource, env: development)
//BUG: This does not work
@development
@injectable
class DevelopmentConfigDatasource implements ConfigDatasource {
  DevelopmentConfigDatasource();

  @override
  String get baseUrl => 'https://dummy.restapiexample.com/api/v1/';

  @override
  Dio get dio => Dio()..interceptors.add(PrettyDioLogger());
}
