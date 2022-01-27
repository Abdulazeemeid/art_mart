import 'package:art_mart/view/auth/login_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:flutter_login_facebook/flutter_login_facebook.dart';


class AuthController extends GetxController{
  final GoogleSignIn _googleSignIn = GoogleSignIn(scopes: ['email']);
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FacebookLogin _facebookLogin = FacebookLogin();
  late String userEmail,uesrPassword,userName;
  
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
  
  void emailAndPassSignInMethod()async{
    try{
      _auth.signInWithEmailAndPassword(email: userEmail, password: uesrPassword).then((value) => debugPrint(value.toString()));
      Get.offAll(()=>const LogInPage());
    }catch(e){
      Get.snackbar(
        'error lllllllllllllllllllllllllllllllllllllllllogin and pass',
        e.toString(),
        snackPosition: SnackPosition.BOTTOM,
        );
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
  void createuserwithemailandpass()async{
    try {
      //UserCredential userCredentia =
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: "abdo1122@example.com",
        password: "a123456",
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        debugPrint('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        debugPrint('The account already exists for that email.');
      }
    } catch (e) {
      debugPrint(e.toString());
    }

  }

}