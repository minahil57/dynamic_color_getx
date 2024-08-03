import 'package:qfinity_finance_modeule/core/imports/internal_imports.dart';

import 'app_routes/app_routes.dart';
import 'core/imports/external_imports.dart';

Future<void> main() async {
  final ColorController colorController = Get.put(ColorController());
  WidgetsFlutterBinding.ensureInitialized();
  EasyLoading.instance
    ..textStyle = getMediumStyle(fontSize: 12, color: kcWhitecolor)
    ..loadingStyle = EasyLoadingStyle.custom
    ..backgroundColor = colorController.primaryColor.value
    ..radius = 12
    ..indicatorSize = 30
    ..textColor = colorController.primaryColor.value
    ..indicatorType = EasyLoadingIndicatorType.doubleBounce
    ..toastPosition = EasyLoadingToastPosition.top
    ..textColor = kcWhitecolor
    ..textStyle = getMediumStyle(fontSize: 14, color: kcWhitecolor)
    ..indicatorColor = kcWhitecolor
    ..maskColor = kcBlackColor
    ..userInteractions = false
    ..displayDuration = const Duration(seconds: 1)
    ..dismissOnTap = false;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final ColorController colorController = Get.put(ColorController());
    return ScreenUtilInit(
      designSize: const Size(360, 640),
      //minTextAdapt: true,
      splitScreenMode: true,
      useInheritedMediaQuery: false,
      builder: (context, child) => GestureDetector(
        behavior: HitTestBehavior.translucent,
        onTap: () => FocusScope.of(context).unfocus(),
        child: Obx(()
         => GetMaterialApp.router(
           color: colorController.primaryColor.value,
            debugShowCheckedModeBanner: false,
            routeInformationProvider: goRouter.routeInformationProvider,
            routeInformationParser: goRouter.routeInformationParser,
            routerDelegate: goRouter.routerDelegate,
            title: 'Dynamic Colors',
            theme: buildCustomTheme(),
            builder: EasyLoading.init(),
          ),
        ),
      ),
    );
  }
}
