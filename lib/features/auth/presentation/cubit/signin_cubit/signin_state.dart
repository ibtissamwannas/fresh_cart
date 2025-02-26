part of 'signin_cubit.dart';

sealed class SigninState {}

final class SigninInitial extends SigninState {}

final class SigninLoading extends SigninState {}

final class SigninSuccess extends SigninState {
  final UserEntity userEntity;
  SigninSuccess(this.userEntity);
}

final class SigninFailure extends SigninState {
  final String message;
  SigninFailure(this.message);
}
