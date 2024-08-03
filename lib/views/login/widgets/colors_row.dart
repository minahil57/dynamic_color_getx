import 'package:qfinity_finance_modeule/core/imports/external_imports.dart';
import '../../../core/imports/internal_imports.dart';

class ColorsRow extends StatelessWidget {
  const ColorsRow({super.key});

  @override
  Widget build(BuildContext context) {
    final ColorController colorController = Get.find();

    return Stack(children: [
      Positioned(
        top: 10,
        right: 20,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            GestureDetector(
              onTap: () {
                colorController.updateColors(Colors.blue, Colors.blueAccent);
              },
              child: Container(
                height: 30,
                width: 30,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.blue,
                ),
              ),
            ),
            horizontalSpaceSmall,
            GestureDetector(
              onTap: () {
                colorController.updateColors(Colors.pink, Colors.pinkAccent);
              },
              child: Container(
                height: 30,
                width: 30,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.pink,
                ),
              ),
            ),
            horizontalSpaceSmall,
            GestureDetector(
              onTap: () {
                colorController.updateColors(Colors.purple, Colors.deepPurple);
              },
              child: Container(
                height: 30,
                width: 30,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.purple,
                ),
              ),
            ),
            horizontalSpaceSmall,
            GestureDetector(
              onTap: () {
                colorController.updateColors(Colors.red, Colors.redAccent);
              },
              child: Container(
                height: 30,
                width: 30,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.red,
                ),
              ),
            ),
            horizontalSpaceSmall,
            GestureDetector(
              onTap: () {
                colorController.updateColors(
                    const Color(0xFFD17E06), const Color(0xFFD17E00));
              },
              child: Container(
                height: 30,
                width: 30,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xFFD17E06),
                ),
              ),
            ),
          ],
        ),
      ),
    ]);
  }
}
