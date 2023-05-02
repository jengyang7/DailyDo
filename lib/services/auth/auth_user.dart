import 'package:firebase_auth/firebase_auth.dart' show User;
import 'package:flutter/material.dart';

@immutable
class AuthUser {
  final bool isEmailVerified;
  const AuthUser(this.isEmailVerified);

  // get a copy from Firebase User
  factory AuthUser.fromFirebase(User user) => AuthUser(user.emailVerified);
}
