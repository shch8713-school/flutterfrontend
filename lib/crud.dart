import 'dart:async';
import 'package:cloud_firestore/cloud_firestore.dart';
//import 'package:firebase_auth/firebase_auth.dart';

// ignore: camel_case_types
class crudMethods {

  Future<void> addUserData(userData) async {
    Firestore.instance.collection('users').add(userData).catchError((e) {
      print(e);
    });
  }

}
// ignore: camel_case_types
class getProfile {

  Future<void> addUserData(userData) async {
    Firestore.instance.collection('users').add(userData).catchError((e) {
      print(e);
    });
  }

}