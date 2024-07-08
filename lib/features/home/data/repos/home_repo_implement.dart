import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:grocery/core/utils/errors/failure.dart';
import 'package:grocery/features/home/data/models/products_model.dart';
import 'package:grocery/features/home/data/repos/home_repo.dart';

import '../../../../core/utils/function/api_service.dart';

class HomeRepoImplement extends HomeRepo {
  final ApiService apiService;

  HomeRepoImplement(this.apiService);

  @override
  Future<Either<Failures, ProductResponse>> getAllProducts() async {
    try {
      final res = await apiService.getData(endPoint: 'allProducts');
      if (res['code'] == 200) {
        return right(ProductResponse.fromJson(res['data']));
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
  Future<Either<Failures, Product>> getProduct(final int id) async {
    try {
      final res = await apiService.getData(endPoint: 'product/$id');
      if (res['code'] == 200) {
        return right(Product.fromJson(res['data']['data']));
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
  Future<Either<Failures, String>> addItemToCart(int id, int quantity) async {
    try {
      final res = await apiService.postData(
          endPoint: 'cart/add', data: {'product_id': id, 'quantity': quantity});
      if (res['code'] == 200) {
        return right(res['data']['message']);
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
