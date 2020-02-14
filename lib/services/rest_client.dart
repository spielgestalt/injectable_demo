import 'package:dio/dio.dart';
import 'package:injectable_demo/models/employees_response.dart';
import 'package:retrofit/http.dart';

part 'rest_client.g.dart';

@RestApi(baseUrl: 'https://dummy.restapiexample.com/api/v1/')
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;
  @GET('/employees')
  Future<EmployeesResponse> employees();
}
