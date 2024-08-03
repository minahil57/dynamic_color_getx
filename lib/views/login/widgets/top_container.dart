import 'package:get/get.dart';
import 'package:qfinity_finance_modeule/core/imports/internal_imports.dart';
import 'package:qfinity_finance_modeule/views/login/widgets/top_container_widgets/image_container.dart';
import 'package:qfinity_finance_modeule/views/login/widgets/top_container_widgets/login_form.dart';

class TopContainer extends StatelessWidget {
  const TopContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final ColorController colorController = Get.find();
    return Stack(
      children: [
        Positioned.fill(
          child: Align(
            alignment: Alignment.center,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.75,
              width: MediaQuery.of(context).size.width * 0.95,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2), // Shadow color
                    spreadRadius: 5, // Spread radius
                    blurRadius: 10, // Blur radius
                    offset: const Offset(0, 5), // Shadow position
                  ),
                ],
                borderRadius: BorderRadius.circular(20),
                color: Colors.white, // Replace with your kcWhiteColor
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Left Side (Form)
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.all(20.0),
                      child: LoginForm(),
                    ),
                  ),
                  // Right Side (Background Image with Foreground Container)
                  Expanded(
                    child: ImageContainer(),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
