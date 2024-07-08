import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:grocery/core/utils/function/api_service.dart';
import 'package:meta/meta.dart';

import '../../../../../core/utils/errors/failure.dart';

part 'logout_state.dart';

class LogoutCubit extends Cubit<LogoutState> {
  LogoutCubit(this.apiService) : super(LogoutInitial());
  final ApiService apiService;

  Future<void> logOut() async {
    emit(LogoutLoading());
    try {
      final res = await apiService.postData(endPoint: 'logout', data: {});
      if (res['code'] == 200) {
        emit(LogoutSuccess(res['data']));
      } else {
        emit(LogoutFailure(ServerFailure(res['data']['message']).errorMessage));
      }
    } catch (e) {
      if (e is DioException) {
        emit(LogoutFailure(ServerFailure.fromDioError(e).errorMessage));
      }
      emit(LogoutFailure(e.toString()));
    }
  }
}
