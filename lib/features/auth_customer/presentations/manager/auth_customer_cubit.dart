
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grocery/features/auth_customer/data/repos/auth_customer_repo.dart';

part 'auth_customer_state.dart';

class AuthCustomerCubit extends Cubit<AuthCustomerState> {
  AuthCustomerCubit(this.authCustomerRepo) : super(AuthCustomerInitial());
  AuthCustomerRepo authCustomerRepo;

  Future<void> register(String name,String email,String pass,String rePass) async {
    emit(AuthCustomerLoading());
    final result = await authCustomerRepo.register(name,email,pass,rePass);
    result.fold((l) {
      print(l.errorMessage);
      emit(AuthCustomerFailure(l.errorMessage));
    }, (r) {
      emit(AuthCustomerSuccess());
    });
  }

  Future<void> login(String email,String pass) async {
    emit(AuthCustomerLoading());
    final result = await authCustomerRepo.login(email,pass);
    result.fold((l) {
      print(l.errorMessage);
      emit(AuthCustomerFailure(l.errorMessage));
    }, (r) {
      emit(AuthCustomerSuccess());
    });
  }
}
