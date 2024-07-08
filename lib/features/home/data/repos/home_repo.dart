import 'package:dartz/dartz.dart';
import 'package:grocery/core/utils/errors/failure.dart';
import 'package:grocery/features/home/data/models/products_model.dart';

abstract class HomeRepo {
  Future<Either<Failures, ProductResponse>> getAllProducts();

  Future<Either<Failures, Product>> getProduct(final int id);

  Future<Either<Failures, String>> addItemToCart(
      final int id, final int quantity);
}
