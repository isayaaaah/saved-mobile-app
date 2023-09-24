import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:prototype1/screens/home/home.dart';

class MyUser{
  final String? uid;

 MyUser({this.uid});

}
class UserData{

  final String uid;
  late final int scoreQuiz;
  late final int scoreGame;

  UserData({required this.uid, required this.scoreGame, required this.scoreQuiz});
}

class UserManagement{
  storeNewUser(user,context)async{
    var firebaseUser = await FirebaseAuth.instance.currentUser;
    FirebaseFirestore.instance
    .collection('saved')
    .doc(firebaseUser!.uid)
    .set({'scoreQuiz': user.scoreQuiz,'scoreGame': user.scoreGame, 'uid': user.uid})
    .then((value) => Navigator.push(context, MaterialPageRoute(builder: (context) => Home())))
    .catchError((e){
      print(e);
    });
  }
}