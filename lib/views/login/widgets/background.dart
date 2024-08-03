import 'package:qfinity_finance_modeule/core/imports/external_imports.dart';

import '../../../core/imports/internal_imports.dart';

class LoginBackGround extends StatelessWidget {
  const LoginBackGround({super.key});

  @override
  Widget build(BuildContext context) {
    final ColorController colorController = Get.find();

    return Stack(
      children: [
        Positioned(
          top: -150,
          left: -150,
          child: Obx(
            () => Container(
              height: MediaQuery.sizeOf(context).height * 0.7,
              width: MediaQuery.sizeOf(context).width * 0.5,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2), // Shadow color
                    spreadRadius: 5, // Spread radius
                    blurRadius: 10, // Blur radius
                    offset: const Offset(0, 5), // Shadow position
                  ),
                ],
                color: colorController.primaryColor.value,
                shape: BoxShape.circle,
              ),
            ),
          ),
        ),
        Positioned(
          bottom: -100,
          right: -20,
          child: Container(
            height: MediaQuery.sizeOf(context).height * 0.5,
            width: MediaQuery.sizeOf(context).width * 0.2,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2), // Shadow color
                  spreadRadius: 5, // Spread radius
                  blurRadius: 10, // Blur radius
                  offset: const Offset(0, 5), // Shadow position
                ),
              ],
              color: kcBlackColor,
              shape: BoxShape.circle,
            ),
          ),
        ),
      ],
    );
  }
}
