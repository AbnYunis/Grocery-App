import 'package:bloc/bloc.dart';
import 'package:grocery/features/home/data/repos/home_repo.dart';
import 'package:meta/meta.dart';

part 'add_product_to_cart_state.dart';

class AddProductToCartCubit extends Cubit<AddProductToCartState> {
  AddProductToCartCubit(this.homeRepo) : super(AddProductToCartInitial());
  final HomeRepo homeRepo;

  Future<void> addItemToCart(final int id, final int quantity) async {
    emit(AddProductToCartLoading());
    final res = await homeRepo.addItemToCart(id, quantity);
    res.fold((failure) {
      emit(AddProductToCartFailure(failure.errorMessage));
    }, (product) {
      emit(AddProductToCartSuccess(product));
    });
  }
}
