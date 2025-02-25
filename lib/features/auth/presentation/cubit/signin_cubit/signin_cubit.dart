import 'package:bloc/bloc.dart';
import 'package:fresh_cart/features/auth/domain/entities/user_entity.dart';
import 'package:fresh_cart/features/auth/domain/repos/auth_repo.dart';

part 'signin_state.dart';

class SigninCubitCubit extends Cubit<SigninCubitState> {
  SigninCubitCubit(this.authRepo) : super(SigninCubitInitial());

  final AuthRepo authRepo;

  Future<void> loginWithEmailAndPassword(String email, String password) async {
    emit(SigninCubitLoading());
    final result = await authRepo.signinWithEmailAndPassword(email, password);
    result.fold(
      (failure) => emit(SigninCubitFailure(failure.message)),
      (userEntity) => emit(SigninCubitSuccess(userEntity)),
    );
  }

}
