import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../data/repos/set_location_repo.dart';

part 'set_location_state.dart';

class SetLocationCubit extends Cubit<SetLocationState> {
  SetLocationCubit(this.selectLocationRepo) : super(SetLocationInitial());
  SelectLocationRepo selectLocationRepo;
  Future<void> setLocation(String city,String country,String location) async {
    emit(SetLocationLoading());
    final result = await selectLocationRepo.setLocation( city, country, location);
    result.fold((l) {
      print(l.errorMessage);
      emit(SetLocationFailure(l.errorMessage));
    }, (r) {
      print(r.data!.city);
      emit(SetLocationSuccess());
    });
  }
}
