import 'package:dartz/dartz.dart';
import 'package:grocery/core/utils/errors/failure.dart';

import '../models/locin_model.dart';
import '../models/register_model.dart';

abstract class AuthCustomerRepo {
  Future<Either<Failures, RegisterModel>> register(String name,String email,String pass,String rePass);
  Future<Either<Failures, LoginModel>> login(String email,String pass);
}
