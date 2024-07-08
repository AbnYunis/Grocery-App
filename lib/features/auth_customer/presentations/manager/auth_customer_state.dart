part of 'auth_customer_cubit.dart';

sealed class AuthCustomerState {}

final class AuthCustomerInitial extends AuthCustomerState {}
final class AuthCustomerLoading extends AuthCustomerState {}
final class AuthCustomerSuccess extends AuthCustomerState {}
final class AuthCustomerFailure extends AuthCustomerState {
  final String error;
  AuthCustomerFailure(this.error);
}