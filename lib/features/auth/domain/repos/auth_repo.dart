import 'package:dartz/dartz.dart';
import 'package:fresh_cart/core/errors/failures.dart';
import 'package:fresh_cart/features/auth/domain/entities/user_entity.dart';

abstract class AuthRepo {
  Future<Either<Failures, UserEntity>> createUserwithEmailAndPassword(
      String email, String password, String name);

  Future<Either<Failures, UserEntity>> signinWithEmailAndPassword(
      String email, String password);
}
