import 'package:art_mart/constance.dart';
import 'package:art_mart/controller/view_model_controller/auth_controller.dart';
import 'package:art_mart/view/auth/sign_up_screen.dart';
import 'package:art_mart/view/widgets/custom_button.dart';
import 'package:art_mart/view/widgets/custom_button_social.dart';
import 'package:art_mart/view/widgets/custom_text.dart';
import 'package:art_mart/view/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends GetWidget<AuthController> {
  LoginScreen({Key? key}) : super(key: key);
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          padding: EdgeInsets.only(top: MediaQuery.of(context).size.height / 10),
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.only(top: 12.0, right: 18.0, left: 18.0),
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomText(
                        color: Colors.black,
                        fontSize: 40,
                        text: 'Welcome',
                      ),
                      TextButton(
                        onPressed: () {
                          Get.to(()=>const SignUpScreen());
                        },
                        child: CustomText(
                          color: myPrimaryColor,
                          fontSize: 22,
                          text: 'Sign Up',
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 12.0,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      
                      /*
                      CustomText(
                        text: 'Sign In To Continue',
                        fontSize: 15,
                        color: Colors.grey.shade900,
                        //alignment: Alignment.topLeft,
                      ),*/
                      const SizedBox(
                        height: 25.0,
                      ),
                      CustomTextFormField(
                        hintText: 'abdo@gmail.com',
                        customTextVal: 'Enter Email',
                      ),
                      const SizedBox(
                        height: 15.0,
                      ),
                      CustomTextFormField(
                        hintText: 'Please Enter 8 Digit',
                        customTextVal: 'Enter Password',
                        obscureText: true,
                      ),
                      const SizedBox(
                        height: 16.0,
                      ),
                      CustomText(
                          text: 'Forgot Your Password?',
                          fontSize: 15,
                          color: Colors.blue,
                          alignment: Alignment.topRight),
                      const SizedBox(
                        height: 50.0,
                      ),
                      const CustomButton(
                        text: 'Sign in',
                      ),
                      const SizedBox(
                        height: 16.0,
                      ),
                    ],
                  ),
                  CustomText(
                      text: '-OR Sign With-',
                      fontSize: 18,
                      alignment: Alignment.center),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      LoginWithSocial(
                        socialButtonColor: Colors.deepOrange,
                        text: 'Google',
                        iconbut: Icons.add_to_home_screen,
                        onpress: () {
                          controller.googleSignInMethod();
                          //authController.googleSignInMethod();
                        },
                      ),
                      LoginWithSocial(
                        onpress: () {
                          controller.facebookSignInMethod();
                        },
                        socialButtonColor: Colors.blueAccent,
                        text: 'FaceBook',
                        iconbut: Icons.facebook,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        /*body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) => [
            const SliverAppBar(
            elevation: 0.0,
            backgroundColor: Colors.white,),
          ],
        )*/
      ),
    );
  }
}
