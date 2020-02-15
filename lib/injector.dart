import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'injector.iconfig.dart';

/*
class Environment {
  static const production = 'production';
  static const staging = 'staging';
  static const development = 'development';
  static const test = 'test';
}
*/
const production = 'production';
const staging = 'staging';
const development = 'development';
const testing = 'testing';

final GetIt getIt = GetIt.instance;

@injectableInit
void configure(String environment) =>
    $initGetIt(getIt, environment: environment);

@registerModule
abstract class RegisterModule {
  @lazySingleton
  Dio get dio => Dio();
}
/**
 * There seems to be a bug, not importing the dependency of PrettyDioLogger in injector.iconfig.dart
    @registerModule
    abstract class RegisterModule {
    @lazySingleton
    Dio get dio => Dio()..interceptors.add(PrettyDioLogger());
    }
 */
