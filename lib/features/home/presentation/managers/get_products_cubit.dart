import 'package:bloc/bloc.dart';
import 'package:grocery/features/home/data/models/products_model.dart';
import 'package:meta/meta.dart';

import '../../data/repos/home_repo.dart';

part 'get_products_state.dart';

class GetProductsCubit extends Cubit<GetProductsState> {
  GetProductsCubit(this.homeRepo) : super(GetProductsInitial());
  final HomeRepo homeRepo;

  Future<void> getAllProducts() async {
    emit(GetProductsLoading());
    final res = await homeRepo.getAllProducts();
    res.fold((failure) {
      emit(GetProductsFailure(failure.errorMessage));
    }, (products) {
      emit(GetProductsSuccess(products));
    });
  }
}
