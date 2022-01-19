import 'package:art_mart/controller/view_model_controller/auth_controller.dart';
import 'package:get/get.dart';

class Binding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => AuthController());
  }

}