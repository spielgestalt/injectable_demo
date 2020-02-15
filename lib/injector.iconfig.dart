// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart';
import 'package:injectable_demo/services/config/test_config_datasource.dart';
import 'package:injectable_demo/services/config/config_datasoorce.dart';
import 'package:dio/src/dio.dart';
import 'package:injectable_demo/services/rest_client.dart';
import 'package:get_it/get_it.dart';

void $initGetIt(GetIt g, {String environment}) {
  g.registerLazySingleton<Dio>(() => Dio());
  g.registerFactory<RestClient>(() => RestClient(
        g<Dio>(),
        g<ConfigDatasource>(),
      ));
  if (environment == 'testing') {
    _registerTestingDependencies(g);
  }
  if (environment == 'production') {
    _registerProductionDependencies(g);
  }
  if (environment == 'staging') {
    _registerStagingDependencies(g);
  }
  if (environment == 'development') {
    _registerDevelopmentDependencies(g);
  }
}

void _registerTestingDependencies(GetIt g) {
  g.registerFactory<ConfigDatasource>(() => TestConfigDatasource());
}

void _registerProductionDependencies(GetIt g) {
  g.registerFactory<ConfigDatasource>(() => ProductionConfigDatasource(
        g<Dio>(),
      ));
}

void _registerStagingDependencies(GetIt g) {
  g.registerFactory<ConfigDatasource>(() => StagingConfigDatasource(
        g<Dio>(),
      ));
}

void _registerDevelopmentDependencies(GetIt g) {
  g.registerFactory<ConfigDatasource>(() => DevelopmentConfigDatasource());
}
