import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

final _fireAuth = FirebaseAuth.instance;
class AuthLogg extends ChangeNotifier{
  final form = GlobalKey<FormState>();

  var islogin = true;
  var enterEmail = '';
  var enterPassword = '';

  void submit()async{
    final _isvalid = form.currentState!.validate();
    if(!_isvalid){
      return;
    }
    form.currentState!.save();
    try{
      if(islogin) {
        final UserCredential = await _fireAuth.signInWithEmailAndPassword(
            email: enterEmail, password: enterPassword);
      }else{
        final UserCredential = await _fireAuth.createUserWithEmailAndPassword(
            email: enterEmail, password: enterPassword);
      }
    }catch(e){
      if(e is FirebaseAuthException){
        if(e.code ==  'email-already-in-use'){
          print("Email already in use");
        }
      }
    }
    notifyListeners();
  }
}
