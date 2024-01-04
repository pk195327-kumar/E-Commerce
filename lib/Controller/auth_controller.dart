import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_commerce/consts/consts.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {

  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  // login method........

  Future<UserCredential?> loginMethod({context}) async{

    UserCredential? userCredential;
    try{
     userCredential = await auth.signInWithEmailAndPassword(email: emailController.text, password: passwordController.text);
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
     userCredential = await auth.createUserWithEmailAndPassword(email: email, password: password);
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

