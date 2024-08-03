import 'package:get/get.dart';
import 'package:qfinity_finance_modeule/core/imports/internal_imports.dart';
import 'package:qfinity_finance_modeule/views/login/login_controller.dart';
import 'package:qfinity_finance_modeule/views/login/widgets/background.dart';
import 'package:qfinity_finance_modeule/views/login/widgets/colors_row.dart';
import 'package:qfinity_finance_modeule/views/login/widgets/top_container.dart';

class LoginScreen extends GetView<LoginController> {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {

    Get.put(LoginController());
    return const Scaffold(
      backgroundColor: kcWhitecolor,
      body: Stack(
        children: [
          LoginBackGround(),
          TopContainer(),
          ColorsRow(),
        ],
      ),
    );
  }
}
