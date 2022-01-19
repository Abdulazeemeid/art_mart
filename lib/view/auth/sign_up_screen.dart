import 'package:art_mart/controller/view_model_controller/auth_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(
          //systemNavigationBarColor: Colors.blue, // navigation bar color
          statusBarColor: Colors.white,
          systemNavigationBarDividerColor: Colors.black,
          statusBarIconBrightness: Brightness.dark,
        // status bar color
      ),
      ),
      body: Center(
        child: Column(
          children: [
            /*
            GetX<AuthController>(
              init: AuthController(),
              builder: (value)=>Text('${viewModel.x}'),
            ),
            Obx(
                ()=>Text('${viewModel.x}'),
            ),
            Text('${viewModel.x.value}'),
            ElevatedButton(
                onPressed: (){viewModel.increment();},
                child: Text('increment'),
            )

             */
            /*
            GetBuilder<AuthController>(
              init: AuthController(),
              builder: (value)=>Text('${value.x}')
            ),
            GetBuilder<AuthController>(
                builder: (value)=>ElevatedButton(
                  onPressed: (){value.increment();},
                  child: Text('increment'),
                ),
            ),
             */
          ],
        ),
      )
    );
  }
}
