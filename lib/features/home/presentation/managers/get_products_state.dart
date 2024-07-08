part of 'get_products_cubit.dart';

@immutable
sealed class GetProductsState {}

final class GetProductsInitial extends GetProductsState {}
final class GetProductsFailure extends GetProductsState {
  final String message;

  GetProductsFailure(this.message);
}
final class GetProductsSuccess extends GetProductsState {
  final ProductResponse productResponse;

  GetProductsSuccess(this.productResponse);
}
final class GetProductsLoading extends GetProductsState {}
