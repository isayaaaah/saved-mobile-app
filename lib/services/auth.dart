import 'package:firebase_auth/firebase_auth.dart';
import 'package:prototype1/models/user.dart';
import 'package:prototype1/services/database.dart';

class AuthService{

  final FirebaseAuth _auth = FirebaseAuth.instance;

  //create user obj
  MyUser? _userfromFirebase(User user) {
    return user != null ? MyUser(uid: user.uid) : null;
  }

  // auth change user stream
  Stream<MyUser> get user {
    return _auth.authStateChanges()
        .map((User? user) => _userfromFirebase(user!)!);
          //.map(_userfromFirebase);
  }

   //sign in anon

  Future signInAnon() async {
    try{
      UserCredential result = await _auth.signInAnonymously();
      User? user = result.user;
      return _userfromFirebase(user!);

    }catch(e){
      print(e.toString());
      return null;
    }
  }

  //sign in with email and password
  Future signinWithEmailAndPassword(String email, String password) async {
    try{
      UserCredential result = await _auth.signInWithEmailAndPassword(email: email, password: password);
      User? user = result.user;
      return _userfromFirebase(user!);
    }catch(e){
      print(e.toString());
      return null;
    }
  }

  //register with email and password
  Future registerWithEmailAndPassword(String email, String password) async {
    try{
      UserCredential result = await _auth.createUserWithEmailAndPassword(email: email, password: password);
      User? user = result.user;

      //create a new document
      await DatabaseService(uid: user!.uid).updateUserData(0,0);

      return _userfromFirebase(user!);
    }catch(e){
      print(e.toString());
      return null;
    }
  }

  //signout
  Future signOut() async{
    try{
      return await _auth.signOut();
    }catch(e){
      print(e.toString());
      return null;
    }
  }
}