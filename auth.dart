import 'package:firebase_auth/firebase_auth.dart';

Future<User?> signUp(
    {required String name,
    required String email,
    required String phoneNo,
    required String password}) async {
  FirebaseAuth auth = FirebaseAuth.instance;

  var details = await auth.createUserWithEmailAndPassword(
      email: email, password: password);

  if (details.user != null) {
    User user = details.user!;
    // await user.linkWithPhoneNumber(phoneNo);
    return user;
  }

  return null;
}

Future<User?> signIn({required String email, required String password}) async {
  FirebaseAuth auth = FirebaseAuth.instance;

  var details =
      await auth.signInWithEmailAndPassword(email: email, password: password);
  return details.user;
}
