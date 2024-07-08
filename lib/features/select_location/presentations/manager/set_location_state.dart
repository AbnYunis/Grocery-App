part of 'set_location_cubit.dart';

@immutable
sealed class SetLocationState {}

final class SetLocationInitial extends SetLocationState {}
final class SetLocationLoading extends SetLocationState {}
final class SetLocationSuccess extends SetLocationState {}
final class SetLocationFailure extends SetLocationState {
  final String error;
  SetLocationFailure(this.error);
}
