





import 'package:firebase_auth/firebase_auth.dart';
import 'package:winteam_admin/main.dart';




Future<UserCredential?> signIn(String email, String password) async {
  try {
    final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password
    );
    await fetchBaseUrl();
    return credential;
  } on FirebaseAuthException catch (e) {
    if (e.code == 'user-not-found') {
      print('No user found for that email.');
    } else if (e.code == 'wrong-password') {
      print('Wrong password provided for that user.');
    }
  }
}


Future<bool> askResetPassword(String email) async {
  await FirebaseAuth.instance
      .sendPasswordResetEmail(email: email);
  return true;
}


Future<bool> updatePassword(String newPassword) async {
  await FirebaseAuth.instance.currentUser?.updatePassword(newPassword);
  return true;
}

Future<bool> updateEmail(String newEmail) async {
  await FirebaseAuth.instance.currentUser?.updateEmail(newEmail);
  return true;
}