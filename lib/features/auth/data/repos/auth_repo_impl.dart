import 'package:dartz/dartz.dart';
import 'package:fresh_cart/core/errors/exceptions.dart';
import 'package:fresh_cart/core/errors/failures.dart';
import 'package:fresh_cart/core/services/firebase_auth_service.dart';
import 'package:fresh_cart/features/auth/data/models/user_model.dart';
import 'package:fresh_cart/features/auth/domain/entities/user_entity.dart';
import 'package:fresh_cart/features/auth/domain/repos/auth_repo.dart';

class AuthRepoImpl extends AuthRepo {
  final FirebaseAuthService firebaseAuthService;
  AuthRepoImpl({required this.firebaseAuthService});

  @override
  Future<Either<Failures, UserEntity>> createUserwithEmailAndPassword(
      String email, String password, String name) async {
    try {
      var user = await firebaseAuthService.createUserWithEmailAndPassword(
          email: email, password: password);
      return right(UserModel.fromFirebaseUser(user));
    } on CustomException catch (e) {
      return left(ServerFailure(e.message));
    } catch (e) {
      return left(ServerFailure('حدث خطأ.'));
    }
  }
}
