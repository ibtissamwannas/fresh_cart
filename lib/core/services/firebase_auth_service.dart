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
      if (e.code == 'weak-password') {
        throw const CustomException(
            message: 'The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        throw const CustomException(
            message: 'The account already exists for that email.');
      }else{
        throw const CustomException(message: 'An error occurred');
      }
    } catch (e) {
      throw const CustomException(message: 'An error occurred');
    }
  }
}
