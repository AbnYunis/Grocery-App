import 'package:bloc/bloc.dart';
import 'package:grocery/features/home/data/repos/home_repo.dart';
import 'package:meta/meta.dart';

import '../../../data/models/products_model.dart';

part 'get_product_state.dart';

class GetProductCubit extends Cubit<GetProductState> {
  GetProductCubit(this.homeRepo) : super(GetProductInitial());
  final HomeRepo homeRepo;

  Future<void> getProduct(final int id) async {
    emit(GetProductLoading());
    final res = await homeRepo.getProduct(id);
    res.fold((failure) {
      emit(GetProductFailure(failure.errorMessage));
    }, (product) {
      emit(GetProductSuccess(product));
    });
  }
}
