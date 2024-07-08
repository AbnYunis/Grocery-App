import 'package:dio/dio.dart';

import 'package:get_it/get_it.dart';
import 'package:grocery/features/home/data/repos/home_repo_implement.dart';

import 'api_service.dart';

final sl = GetIt.instance;

class ServiceLocator {
  void init() {
    sl.registerSingleton<ApiService>(ApiService(Dio()));
    sl.registerSingleton<HomeRepoImplement>(HomeRepoImplement(sl()));
  }
}
