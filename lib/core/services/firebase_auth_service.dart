import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:fresh_cart/core/errors/exceptions.dart';

class FirebaseAuthService {
  Future<User> createUserWithEmailAndPassword(
      {required String email, required String password}) async {
    try {
      final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return credential.user!;
    } on FirebaseAuthException catch (e) {
      log('Exception in firebase createUserWithEmailAndPassword: $e and code: ${e.code}');
      if (e.code == 'weak-password') {
        throw const CustomException(message: 'كلمة المرور المقدمة ضعيفة جدًا.');
      } else if (e.code == 'email-already-in-use') {
        throw const CustomException(
            message: 'الحساب موجود بالفعل لهذا البريد الإلكتروني.');
      } else if (e.code == 'network-request-failed') {
        throw const CustomException(
            message:
                'لا يوجد اتصال بالإنترنت. الرجاء التحقق من الاتصال والمحاولة مرة أخرى.');
      } else {
        throw const CustomException(message: 'حدث خطأ.');
      }
    } catch (e) {
      log('Exception in createUserWithEmailAndPassword: $e');
      throw const CustomException(message: 'حدث خطأ.');
    }
  }

  Future<User> signInWithEmailAndPassword(
      {required String email, required String password}) async {
    try {
      final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return credential.user!;
    } on FirebaseAuthException catch (e) {
      log('Exception in firebase signInWithEmailAndPassword: $e and code: ${e.code}');
      if (e.code == 'user-not-found') {
        throw const CustomException(
            message: 'الحساب غير موجود. الرجاء التسجيل أولاً.');
      } else if (e.code == 'wrong-password') {
        throw const CustomException(message: 'كلمة المرور غير صحيحة.');
      } else if (e.code == 'network-request-failed') {
        throw const CustomException(
            message:
                'لا يوجد اتصال بالإنترنت. الرجاء التحقق من الاتصال والمحاولة مرة أخرى.');
      } else {
        throw const CustomException(message: 'حدث خطأ.');
      }
    } catch (e) {
      log('Exception in signInWithEmailAndPassword: $e');
      throw const CustomException(message: 'حدث خطأ.');
    }
  }
}
