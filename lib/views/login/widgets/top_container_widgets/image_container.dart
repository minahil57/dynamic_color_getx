import '../../../../core/imports/external_imports.dart';
import '../../../../core/imports/internal_imports.dart';

class ImageContainer extends StatelessWidget {
  const ImageContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final ColorController colorController = Get.find();
    return Stack(
      children: [
        // Background Image
        Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
            image: DecorationImage(
              image: AssetImage(
                  'assets/misc/female_finance.jpg'), // Replace with your image asset
              fit: BoxFit.cover,
            ),
          ),
        ),
        // Foreground Container with Image and Text
        Positioned.fill(
          child: Obx(
                () => Container(
              decoration: BoxDecoration(
                color: colorController.primaryColor.value
                    .withOpacity(0.3),
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment:
                    MainAxisAlignment.center,
                    children: [
                      Text(
                        'your',
                        style: getBoldStyle(
                            color: kcWhitecolor
                        ),
                      ),
                      Text(
                        'Logo',
                        style: getBoldStyle(
                          color: colorController
                              .primaryColor.value,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    'Welcome to Minahil\'s Creation',
                    style: getBoldStyle(
                      color: kcWhitecolor,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Discover the infinite possibilities',
                    style: getMediumStyle(
                      color: kcWhitecolor,
                    ),
                    textAlign: TextAlign.center,
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
