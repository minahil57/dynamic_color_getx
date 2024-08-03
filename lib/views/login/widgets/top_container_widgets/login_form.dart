import 'package:qfinity_finance_modeule/views/login/login_controller.dart';

import '../../../../core/imports/external_imports.dart';
import '../../../../core/imports/internal_imports.dart';

class LoginForm extends GetView<LoginController> {

  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    final ColorController colorController = Get.find();
    Get.put(LoginController());
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Obx(
              () => Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'your',
                style: getBoldStyle(),
              ),
              Text(
                'Logo',
                style: getBoldStyle(
                  color: colorController.primaryColor.value,
                ),
              ),
            ],
          ),
        ),
        verticalSpaceSmall,
        Text(
          'Log in to get in the moment updates on the things that interest you.',
          style: getRegularStyle(),
        ),
        verticalSpaceMedium,
        Padding(
          padding:
          const EdgeInsets.symmetric(horizontal: 40.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "Email",
                style: getRegularStyle(),
              ),
              TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: kcWhitecolor,
                  hintText: 'Enter your Email Address',
                  hintStyle: getRegularStyle(
                    color: kcLightGrey,
                  ),
                  prefixIcon: const Icon(
                    Icons.email_outlined,
                    size: 18,
                    color: kcLightGrey,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      color:
                      kcLightGrey, // Set the border color to gray
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      color:
                      kcLightGrey, // Set the enabled border color to gray
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      color:
                      kcLightGrey, // Set the focused border color to gray
                    ),
                  ),
                ),
              ),
              verticalSpaceSmall,
              Text(
                "Password",
                style: getRegularStyle(),
              ),
              Obx(
                    () => TextField(
                  obscureText: controller.isObscured.value,
                  decoration: InputDecoration(
                    filled: true,
                    hintStyle: getRegularStyle(
                      color: kcLightGrey,
                    ),
                    fillColor: Colors.white,
                    suffixIcon: IconButton(
                      icon: Icon(
                        controller.isObscured.value
                            ? Icons.visibility_outlined
                            : Icons.visibility_off_outlined,
                        color: kcLightGrey,
                      ),
                      onPressed: controller.toggleObscured,
                    ),
                    hintText: 'Enter your password',
                    prefixIcon: const Icon(
                      Icons.lock_clock_outlined,
                      size: 18,
                      color: kcLightGrey,
                    ),
                    border: OutlineInputBorder(
                      borderRadius:
                      BorderRadius.circular(10),
                      borderSide: const BorderSide(
                        color:
                        kcLightGrey, // Set the border color to gray
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius:
                      BorderRadius.circular(10),
                      borderSide: const BorderSide(
                        color:
                        kcLightGrey, // Set the enabled border color to gray
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius:
                      BorderRadius.circular(10),
                      borderSide: const BorderSide(
                        color:
                        kcLightGrey, // Set the focused border color to gray
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        verticalSpaceSmall,
        Padding(
          padding:
          const EdgeInsets.symmetric(horizontal: 40.0),
          child: Row(
            mainAxisAlignment:
            MainAxisAlignment.spaceBetween,
            children: [
              // Remember Me Checkbox
              Row(
                children: [
                  Obx(
                        () => Checkbox(
                      side: const BorderSide(
                        color: kcLightGrey,
                      ),
                      value: controller.isChecked.value,
                      onChanged: (bool? value) {
                        controller.toggleChecked(value);
                      },
                    ),
                  ),
                  Text(
                    'Remember Me',
                    style:
                    getRegularStyle(color: kcLightGrey),
                  ),
                ],
              ),
              // Forgot Password Button
              TextButton(
                onPressed: () {
                  // Implement Forgot Password functionality
                },
                child: Text(
                  'Forgot Password?',
                  style:
                  getRegularStyle(color: kcLightGrey),
                ),
              ),
            ],
          ),
        ),
        Obx(
              () => ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              foregroundColor: kcWhitecolor,
              backgroundColor:
              colorController.primaryColor.value,
              padding: const EdgeInsets.symmetric(
                  horizontal: 100, vertical: 15),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            child: const Text('SIGN IN'),
          ),
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            "Don't have an account? Sign Up Now",
            style: getRegularStyle(),
          ),
        ),
      ],
    );
  }
}
