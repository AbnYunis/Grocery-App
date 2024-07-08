import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grocery/core/utils/errors/failure.dart';
import 'package:grocery/core/utils/function/api_service.dart';

import '../../../../../core/utils/mange_routers/imports.dart';

part 'about_state.dart';

class AboutCubit extends Cubit<AboutState> {
  AboutCubit(this.apiService) : super(AboutInitial());
  final ApiService apiService;

  Future<void> getAbout() async {
    emit(AboutLoading());
    try {
      final res = await apiService.getData(endPoint: 'about');
      if (res['code'] == 200) {
        emit(AboutSuccess(res['data']));
      } else {
        emit(AboutFailure(res['data']['message']));
      }
    } catch (e) {
      if (e is DioException) {
        emit(AboutFailure(ServerFailure.fromDioError(e) as String));
      }
      emit(AboutFailure(ServerFailure(e.toString()) as String));
    }
  }
}
