import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:grocery/core/utils/errors/failure.dart';
import 'package:grocery/features/select_location/data/repos/set_location_repo.dart';

import '../../../../core/utils/function/api_service.dart';
import '../models/location_model.dart';

class SelectLocationRepoImplement extends SelectLocationRepo {
  final ApiService apiService;

  SelectLocationRepoImplement(this.apiService);

  @override
  Future<Either<Failures, LocationModel>> setLocation(String city,String country,String location) async {
    try {
      final res = await apiService.postData(data:{"country":country,"city":city,"details":location},endPoint: 'location');
      if (res['code'] == 200) {
        return right(LocationModel.fromJson(res['data']));
      } else {
        return left(
          ServerFailure(res['data']['message']),
        );
      }
    } catch (e) {
      if (e is DioException) {
        return left(
          ServerFailure.fromDioError(e),
        );
      }
      return left(
        ServerFailure(
          e.toString(),
        ),
      );
    }
  }

}
