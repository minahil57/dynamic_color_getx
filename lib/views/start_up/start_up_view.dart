import 'package:qfinity_finance_modeule/core/constants/asset_manager.dart';
import 'package:qfinity_finance_modeule/views/start_up/start_up_controller.dart';

import '../../core/imports/external_imports.dart';
import '../../core/imports/internal_imports.dart';

class SplashScreen extends GetView<StartUpController> {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(StartUpController(context: context));
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Obx(() => AnimatedOpacity(
          opacity: controller.opacity.value,
          duration: const Duration(seconds: 5),
          child: Text(
            'yourLogo',
            style: getBoldStyle(
              color: kcWhitecolor,
            ),
          ) ,// Make sure you have the image in the assets folder
        )),
      ),
    );
  }
}