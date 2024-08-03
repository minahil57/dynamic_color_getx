import 'package:get/get.dart';

class LoginController extends GetxController{
  RxBool isObscured = true.obs;
  RxBool isChecked = false.obs;

  void toggleChecked(value){
    isChecked.value = value;
  }

  void toggleObscured() {

      isObscured.value = !isObscured.value;

  }
}