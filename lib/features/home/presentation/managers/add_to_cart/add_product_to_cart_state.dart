part of 'add_product_to_cart_cubit.dart';

@immutable
sealed class AddProductToCartState {}

final class AddProductToCartInitial extends AddProductToCartState {}

final class AddProductToCartLoading extends AddProductToCartState {}

final class AddProductToCartFailure extends AddProductToCartState {
  final String message;

  AddProductToCartFailure(this.message);
}

final class AddProductToCartSuccess extends AddProductToCartState {
  final String message;

  AddProductToCartSuccess(this.message);
}
