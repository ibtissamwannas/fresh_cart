import 'package:bloc/bloc.dart';
import 'package:fresh_cart/features/auth/domain/entities/user_entity.dart';
import 'package:fresh_cart/features/auth/domain/repos/auth_repo.dart';

part 'signin_state.dart';

class SigninCubit extends Cubit<SigninState> {
  SigninCubit(this.authRepo) : super(SigninInitial());

  final AuthRepo authRepo;

  Future<void> loginWithEmailAndPassword(String email, String password) async {
    emit(SigninLoading());
    final result = await authRepo.signinWithEmailAndPassword(email, password);
    result.fold(
      (failure) => emit(SigninFailure(failure.message)),
      (userEntity) => emit(SigninSuccess(userEntity)),
    );
  }

  Future<void> loginWithGoogle() async {
    emit(SigninLoading());
    final result = await authRepo.signinWithGoogle();
    result.fold(
      (failure) => emit(SigninFailure(failure.message)),
      (userEntity) => emit(SigninSuccess(userEntity)),
    );
  }

  Future<void> loginWithFacebook() async {
    emit(SigninLoading());
    final result = await authRepo.signinWithFacebook();
    result.fold(
      (failure) => emit(SigninFailure(failure.message)),
      (userEntity) => emit(SigninSuccess(userEntity)),
    );
  }

  Future<void> loginWithApple() async {
    emit(SigninLoading());
    final result = await authRepo.signInWithApple();
    result.fold(
      (failure) => emit(SigninFailure(failure.message)),
      (userEntity) => emit(SigninSuccess(userEntity)),
    );
  }
}
