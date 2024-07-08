import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:grocery/core/utils/errors/failure.dart';
import 'package:grocery/features/auth_customer/data/models/locin_model.dart';
import 'package:grocery/features/auth_customer/data/repos/auth_customer_repo.dart';
import '../../../../core/utils/function/api_service.dart';
import '../models/register_model.dart';

class AuthCustomerRepoImplement extends AuthCustomerRepo {
  final ApiService apiService;

  AuthCustomerRepoImplement(this.apiService);

  @override
  Future<Either<Failures, RegisterModel>> register(
      String name, String email, String pass, String rePass) async {
    try {
      final res = await apiService.postData(
        data: {
          "name": name,
          "email": email,
          "password": pass,
          "password_confirmation": rePass,
          "role": "customer",
        },
        endPoint: 'register',
      );
      if (res['code'] == 201) {
        return right(RegisterModel.fromJson(res['data']));
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

  @override
  Future<Either<Failures, LoginModel>> login(String email, String pass) async{
    try {
      final res = await apiService.postData(
        data: {
          "email": email,
          "password": pass,
        },
        endPoint: 'login',
      );
      if (res['code'] == 200) {
        return right(LoginModel.fromJson(res['data']));
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
