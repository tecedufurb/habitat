// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:google_sign_in/google_sign_in.dart';

// import 'util.dart';

// class GoogleSignInProvider extends ChangeNotifier {
//   final googleSignIn =
//       GoogleSignIn(scopes: ["https://www.googleapis.com/auth/drive.file"]);
//   GoogleSignInAccount _user;
//   GoogleSignInAccount get user => _user;

//   Future googleLogin() async {
//     final googleUser = await googleSignIn.signIn();
//     if (googleUser == null) return _user = googleUser;

//     final googleAuth = await googleUser.authentication;

//     final credential = GoogleAuthProvider.credential(
//       accessToken: googleAuth.accessToken,
//       idToken: googleAuth.idToken,
//     );

//     await FirebaseAuth.instance.signInWithCredential(credential);

//     Util.account = googleUser;
//     await Util.getDriveApi();

//     notifyListeners();
//   }
// }
