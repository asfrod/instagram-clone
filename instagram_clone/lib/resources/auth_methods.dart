import 'dart:typed_data';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AuthMethods {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<String> signupUser({
    required String email,
    required String password,
    required String username,
    required String bio,
    required Uint8List file,
  }) async {
    String res = 'Some error ocurred';
    try {
      if (email.isEmpty ||
          password.isEmpty ||
          username.isEmpty ||
          bio.isEmpty ||
          file != null) {
        UserCredential cred = await _auth.createUserWithEmailAndPassword(
            email: email, password: password);
      }
    } catch (e) {
      res = e.toString();
    }
    return res;
  }
}
