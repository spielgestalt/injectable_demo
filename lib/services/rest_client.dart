import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:injectable_demo/models/employees_response.dart';
import 'package:retrofit/http.dart';

import 'config/config_datasoorce.dart';

part 'rest_client.g.dart';

@RestApi(baseUrl: 'https://dummy.restapiexample.com/api/v1/')
@injectable
abstract class RestClient {
  @factoryMethod
  factory RestClient(Dio dio,  ConfigDatasource datasource) {
    return _RestClient(dio /*or datasource.dio*/, baseUrl: datasource.baseUrl);
  }

  @GET('/employees')
  Future<EmployeesResponse> employees();
}
