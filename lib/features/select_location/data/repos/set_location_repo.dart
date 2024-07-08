import 'package:dartz/dartz.dart';
import 'package:grocery/core/utils/errors/failure.dart';
import 'package:grocery/features/select_location/data/models/location_model.dart';

abstract class SelectLocationRepo {
  Future<Either<Failures, LocationModel>> setLocation(String city,String country,String location);
}
