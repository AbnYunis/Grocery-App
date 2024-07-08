part of 'about_cubit.dart';

@immutable
sealed class AboutState {}

final class AboutInitial extends AboutState {}

final class AboutLoading extends AboutState {}

final class AboutFailure extends AboutState {
  final String message;

  AboutFailure(this.message);
}

final class AboutSuccess extends AboutState {
  final Map<String, dynamic> data;

  AboutSuccess(this.data);
}
