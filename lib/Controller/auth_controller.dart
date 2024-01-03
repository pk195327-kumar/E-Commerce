import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_commerce/consts/consts.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {

  // login method........

  Future<UserCredential?> loginMethod({ email, password,context}) async{
    UserCredential? userCredential;
    try{
     userCredential = await auth.signInWithEmailAndPassword(email: email, password: password);
    }on FirebaseAuthException catch (error){
      VxToast.show(context, msg: error.toString());
    }
    return userCredential;
  }

  //........................................................................//

  // signup method.....

  Future<UserCredential?> signupMethod({ email, password,context}) async{
    UserCredential? userCredential;
    try{
     userCredential = await auth.signInWithEmailAndPassword(email: email, password: password);
    }on FirebaseAuthException catch (error){
      VxToast.show(context, msg: error.toString());
    }
    return userCredential;
  }

//........................................................................//

// storing user data on Fire_store

storeUserData({name,password,email})async{
    DocumentReference store = firestore.collection(userCollection).doc(currentUser!.uid);
    store.set({
      "name" : name,
      "password" : password,
      "email" : email,
      "imageUrl" : '',
    });
}

// sign_out method....

signoutMethod({context})async{
    try{
   await auth.signOut();
    }catch(error){
    VxToast.show(context, msg: error.toString());
    }
}
}

