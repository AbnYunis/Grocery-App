import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../errors/failure.dart';

Future<Either<Failures, T>> handleRequest<T>(
  Future<T> Function() request,
) async {
  try {
    final T response = await request();
    return right(response);
  } catch (e) {
    log(e.toString());
    if (e is DioException) {
      return left(ServerFailure.fromDioError(e));
    } else {
      return left(ServerFailure(e.toString()));
    }
  }
}
