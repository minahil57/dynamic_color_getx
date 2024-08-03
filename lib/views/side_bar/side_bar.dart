import 'dart:math';

import 'package:flutter_admin_scaffold/admin_scaffold.dart';
import 'package:qfinity_finance_modeule/core/constants/asset_manager.dart';
import 'package:qfinity_finance_modeule/core/helper/ui_helpers.dart';
import 'package:qfinity_finance_modeule/views/side_bar/side_bar_controller.dart';

import '../../core/imports/external_imports.dart';
import '../../core/imports/internal_imports.dart';

class SideNavigationBar extends GetView<SideBarController> {
  final StatefulNavigationShell navigationShell;
  const SideNavigationBar({
    super.key,
    required this.navigationShell,
  });



  @override
  Widget build(BuildContext context,) {
    final ColorController colorController = Get.put(ColorController());
    final controller = Get.put(SideBarController());
    // final selectedTab = ref.watch(selectedRouteProvider);
    final sideBarKey = ValueKey(Random().nextInt(100000000));

    return Obx(() => AdminScaffold(
      mobileThreshold: 1100,
      backgroundColor: kcWhitecolor,
      appBar: AppBar(
        elevation: 2,
        backgroundColor: kcWhitecolor,
        shadowColor: colorController.primaryColor.value,
        // title:

          // Image.asset('yourLogo',
          //     width: 50, height: 50),

        actions: [
          Stack(
            children: [
              GestureDetector(
                onTap: () {
                  context.go('/editable_table');
                },
                child: Container(
                  alignment: Alignment.center,
                  margin: const EdgeInsets.all(10),
                  padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 1),
                  decoration: BoxDecoration(
                    color: colorController.primaryColor.value,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.arrow_drop_down,
                        color: kcWhitecolor,
                        size: 18,
                      ),
                      Text(
                        'Admin',
                        style: getRegularStyle(color: kcWhitecolor),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                right: 0,
                bottom: 10,
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  decoration: const BoxDecoration(
                    color: kcVeryLightGrey,
                    shape: BoxShape.circle,
                  ),
                  child:  Icon(
                    Icons.logout_outlined,
                    color: colorController.primaryColor.value,
                    size: 18,
                  ),
                ),
              ),
            ],
          ),
          horizontalSpaceSmall,
        ],
      ),
      sideBar: SideBar(
        backgroundColor: kcWhitecolor,
        activeTextStyle: getMediumStyle(color: kcWhitecolor),
        activeIconColor: kcWhitecolor,
        activeBackgroundColor: colorController.primaryColor.value,
        iconColor: kcLightGrey,
        textStyle: getRegularStyle(),
        key: sideBarKey,
        onSelected: (e) {
          final index = controller.getSideBarItem(e);
          if (index != -1) {
            controller.selectedRoute.value = e.route!;
            navigationShell.goBranch(
              index,
              initialLocation: index == navigationShell.currentIndex,
            );
          }
        },
        items: controller.items,
        selectedRoute: controller.selectedRoute.value,
      ),
      body: navigationShell,
    ));


  }
}
