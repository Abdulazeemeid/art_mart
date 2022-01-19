import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:flutter_login_facebook/flutter_login_facebook.dart';

class AuthController extends GetxController{
  final GoogleSignIn _googleSignIn = GoogleSignIn(scopes: ['email']);
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FacebookLogin _facebookLogin = FacebookLogin();
  
  void googleSignInMethod()async{

    final GoogleSignInAccount? googleUser =  await _googleSignIn.signIn();

    GoogleSignInAuthentication googleSignInAuthentication= await googleUser!.authentication;

    final AuthCredential credential = GoogleAuthProvider.credential(
      idToken: googleSignInAuthentication.idToken,
      accessToken: googleSignInAuthentication.accessToken,
    );

    _auth.signInWithCredential(credential);
    

  }

  void facebookSignInMethod()async{

    FacebookLoginResult facebookLoginResult = await _facebookLogin.logIn(customPermissions: ['email']);
    final accessToken = facebookLoginResult.accessToken!.token;
    if(facebookLoginResult.status==FacebookLoginStatus.success){
      final faceCredintial = FacebookAuthProvider.credential(accessToken);
      await _auth.signInWithCredential(faceCredintial);


    }

  }

  /*
  void signInWithEmailAndPassword()async{
    try{
      await _auth.createUserWithEmailAndPassword(
          email: email,
          password: password);
    }catch(e){
      Get.snackbar(
          'Login Error',
          e.toString(),

      );
    }

  }
  */

}