import 'package:academic_app/homepage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class FirebaseHelpers {
  signUp(email, password, context) async {
    try {
      UserCredential userCredential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);

      var authcredential = userCredential.user;
      if (authcredential!.uid.isEmpty) {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => HomePage(),
            ));
      } else {
        Fluttertoast.showToast(
            msg: "Login Successfully",
            toastLength: Toast.LENGTH_LONG,
            gravity: ToastGravity.CENTER,
            timeInSecForIosWeb: 1,
            backgroundColor: Colors.blueAccent,
            textColor: Colors.white,
            fontSize: 16.0);
      }
    } on FirebaseException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
      print(e);
    } catch (e) {
      print(e);
    }
  }

  signIn(email, password, context) async {
    try {
      UserCredential userCredential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);

      var authcredential = userCredential.user;
      if (authcredential!.uid.isEmpty) {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => HomePage(),
            ));
      } else {
        Fluttertoast.showToast(
            msg: "Welcome",
            toastLength: Toast.LENGTH_LONG,
            gravity: ToastGravity.CENTER,
            timeInSecForIosWeb: 1,
            backgroundColor: Colors.deepPurple[100],
            textColor: Colors.white,
            fontSize: 16.0);
      }
    } on FirebaseException catch (e) {
      if (e.code == 'user-not-found') {
        print('The password provided is too weak.');
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
      }
      print(e);
    } catch (e) {
      print(e);
    }
  }
}
