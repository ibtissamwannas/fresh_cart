import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fresh_cart/core/errors/exceptions.dart';
import 'package:fresh_cart/core/errors/failures.dart';
import 'package:fresh_cart/core/services/data_service.dart';
import 'package:fresh_cart/core/services/firebase_auth_service.dart';
import 'package:fresh_cart/core/utils/backend_end_points.dart';
import 'package:fresh_cart/features/auth/data/models/user_model.dart';
import 'package:fresh_cart/features/auth/domain/entities/user_entity.dart';
import 'package:fresh_cart/features/auth/domain/repos/auth_repo.dart';

class AuthRepoImpl extends AuthRepo {
  final FirebaseAuthService firebaseAuthService;
  final DatabaseService databaseService;
  AuthRepoImpl(
      {required this.firebaseAuthService, required this.databaseService});

  @override
  Future<Either<Failures, UserEntity>> createUserwithEmailAndPassword(
      String email, String password, String name) async {
    User? user;
    try {
      user = await firebaseAuthService.createUserWithEmailAndPassword(
          email: email, password: password);
      var userEntity = UserEntity(name: name, email: email, uId: user.uid);
      await addUserData(user: userEntity);
      return right(userEntity);
    } on CustomException catch (e) {
      await deleteUser(user);
      return left(ServerFailure(e.message));
    } catch (e) {
      await deleteUser(user);
      log('Exception in createUserWithEmailAndPassword: $e');
      return left(ServerFailure('حدث خطأ.'));
    }
  }

  Future<void> deleteUser(User? user) async {
    if (user != null) {
      await firebaseAuthService.deleteUser();
    }
  }

  @override
  Future<Either<Failures, UserEntity>> signinWithEmailAndPassword(
      String email, String password) async {
    User? user;
    try {
      user = await firebaseAuthService.signInWithEmailAndPassword(
          email: email, password: password);
      var userEntity = await getUserData(uid: user.uid);
      // save user data
      
      return right(userEntity);
    } on CustomException catch (e) {
      return left(ServerFailure(e.message));
    } catch (e) {
      log('Exception in signInWithEmailAndPassword: $e');
      return left(ServerFailure('حدث خطأ.'));
    }
  }

  @override
  Future<Either<Failures, UserEntity>> signinWithGoogle() async {
    User? user;
    try {
      user = await firebaseAuthService.signInWithGoogle();
      var userEntity = UserModel.fromFirebaseUser(user);
      var isUserExists = await databaseService.checkIfDataExists(
        path: BackendEndpoint.getUsersData,
        docuementId: userEntity.uId,
      );
      if (!isUserExists) {
        await addUserData(user: userEntity);
      } else {
        await getUserData(uid: userEntity.uId);
      }
      return right(userEntity);
    } on CustomException catch (e) {
      await deleteUser(user);
      return left(ServerFailure(e.message));
    } catch (e) {
      await deleteUser(user);
      log('Exception in signInWithGoogle: $e');
      return left(ServerFailure('حدث خطأ.'));
    }
  }

  @override
  Future<Either<Failures, UserEntity>> signinWithFacebook() async {
    User? user;
    try {
      user = await firebaseAuthService.signInWithFacebook();
      var userEntity = UserModel.fromFirebaseUser(user);
      var isUserExists = await databaseService.checkIfDataExists(
        path: BackendEndpoint.getUsersData,
        docuementId: userEntity.uId,
      );
      if (!isUserExists) {
        await addUserData(user: userEntity);
      } else {
        await getUserData(uid: userEntity.uId);
      }
      return right(userEntity);
    } on CustomException catch (e) {
      await deleteUser(user);
      return left(ServerFailure(e.message));
    } catch (e) {
      await deleteUser(user);
      log('Exception in signInWithFacebook: $e');
      return left(ServerFailure('حدث خطأ.'));
    }
  }

  @override
  Future<Either<Failures, UserEntity>> signInWithApple() async {
    User? user;
    try {
      user = await firebaseAuthService.signInWithApple();
      var userEntity = UserModel.fromFirebaseUser(user);
      var isUserExists = await databaseService.checkIfDataExists(
        path: BackendEndpoint.getUsersData,
        docuementId: userEntity.uId,
      );
      if (!isUserExists) {
        await addUserData(user: userEntity);
      } else {
        await getUserData(uid: userEntity.uId);
      }
      return right(userEntity);
    } on CustomException catch (e) {
      await deleteUser(user);
      return left(ServerFailure(e.message));
    } catch (e) {
      await deleteUser(user);
      log('Exception in signInWithApple: $e');
      return left(ServerFailure('حدث خطأ.'));
    }
  }

  @override
  Future addUserData({required UserEntity user}) async {
    await databaseService.addData(
      path: BackendEndpoint.addUserData,
      data: user.toMap(),
      documentId: user.uId,
    );
  }

  @override
  Future<UserEntity> getUserData({required String uid}) async {
    var userData = await databaseService.getData(
      path: BackendEndpoint.getUsersData,
      docuementId: uid,
    );
    return UserModel.fromJson(userData);
  }
}
