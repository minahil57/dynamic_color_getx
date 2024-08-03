import 'package:qfinity_finance_modeule/core/imports/external_imports.dart';
import 'package:qfinity_finance_modeule/core/imports/internal_imports.dart';

class StartUpController extends GetxController {
  BuildContext context;
  StartUpController({required this.context});
  // final AuthenticationService authenticationService = AuthenticationService();
  RxDouble opacity = 0.0.obs;


  @override
  void onInit() async{
    super.onInit();

    _startAnimation();
    // await authenticationService.getToken();
    _navigateToHome();
  }

  void _startAnimation() {
    Future.delayed(const Duration(milliseconds: 200), () {
      opacity.value = 1.0;
    },);
  }

  void _navigateToHome() {
    Future.delayed(const Duration(seconds: 5), () {

      context.go('/login');
    },);
  }
}

