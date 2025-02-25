part of 'signup_cubit.dart';

sealed class SignupState {}

final class SignupInitial extends SignupState {}

final class SignupLoading extends SignupState {}

final class SignupSuccess extends SignupState {
  final UserEntity userEntity;
  SignupSuccess(this.userEntity);
}

final class SignupFailure extends SignupState {
  final String message;
  SignupFailure(this.message);
}
