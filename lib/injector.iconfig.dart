// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:injectable_demo/services/rest_client.dart';
import 'package:injectable_demo/services/config/config_datasoorce.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

void $initGetIt(GetIt g, {String environment}) {
  g.registerFactory<RestClient>(() => RestClient(
        g<ConfigDatasource>(),
      ));
  g.registerLazySingleton<Dio>(
      () => Dio()..interceptors.add(PrettyDioLogger()));
}
