import 'package:dio/dio.dart';

import 'package:get_it/get_it.dart';
import 'package:grocery/features/home/data/repos/home_repo_implement.dart';

import '../../../features/auth_customer/data/repos/auth_customer_repo_implement.dart';
import '../../../features/select_location/data/repos/set_location_repo_implement.dart';
import 'api_service.dart';

final sl = GetIt.instance;

class ServiceLocator {
  void init() {
    sl.registerSingleton<ApiService>(ApiService(Dio()));
    sl.registerSingleton<HomeRepoImplement>(HomeRepoImplement(sl()));
    sl.registerSingleton<SelectLocationRepoImplement>(SelectLocationRepoImplement(sl()));
    sl.registerSingleton<AuthCustomerRepoImplement>(AuthCustomerRepoImplement(sl()));
  }
}
