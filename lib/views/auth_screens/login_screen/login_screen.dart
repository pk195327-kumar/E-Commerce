import 'package:e_commerce/Controller/auth_controller.dart';
import 'package:e_commerce/consts/social_list.dart';
import 'package:e_commerce/widgets_common/app_logo.dart';
import 'package:e_commerce/widgets_common/bg_widget.dart';
import 'package:get/get.dart';
import '../../../consts/consts.dart';
import '../../../widgets_common/custom_text-fields.dart';
import '../../../widgets_common/our_button.dart';
import '../../home_screen/home.dart';
import '../signup_screen/signup_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    AuthController con = Get.put(AuthController());

    final size = MediaQuery.of(context).size.height * 0.1;
    return bgWidget(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: size,
                ),
                appLogoWidget(),
                10.heightBox,
                "Log in to $appName"
                    .text
                    .fontFamily(bold)
                    .white
                    .size(18)
                    .make(),
                10.heightBox,
                Obx(
                  () => Column(
                    children: [
                      customTextField(
                          hint: emailHint,
                          title: email,
                          controller: con.emailController),
                      customTextField(
                          hint: passwordHint,
                          title: password,
                          controller: con.passwordController),
                      Align(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                          onPressed: () {},
                          child: forgetPass.text.make(),
                        ),
                      ),
                      5.heightBox,
                      con.isLoading.value
                          ? const CircularProgressIndicator(
                              valueColor: AlwaysStoppedAnimation(redColor),
                            )
                          : ourButton(
                                  onPressed: () async {
                                    con.isLoading(true);
                                    await con
                                        .loginMethod(context: context)
                                        .then((value) {
                                      if (value != null) {
                                        VxToast.show(context, msg: loggedin);
                                        Get.offAll(() => const Home());
                                      }
                                    });
                                  },
                                  title: login,
                                  bgcolor: redColor,
                                  textColor: Colors.white)
                              .box
                              .width(context.screenWidth - 50)
                              .make(),
                      5.heightBox,
                      createNewAccount.text.color(fontGrey).make(),
                      5.heightBox,
                      con.isLoading.value
                          ? const CircularProgressIndicator(
                              valueColor: AlwaysStoppedAnimation(redColor),
                            )
                          : ourButton(
                                  onPressed: () {
                                    Get.to(() => const SignUpScreen());
                                  },
                                  title: signup,
                                  bgcolor: lightGolden,
                                  textColor: redColor)
                              .box
                              .width(context.screenWidth - 50)
                              .make(),
                      10.heightBox,
                      logInWith.text.color(fontGrey).make(),
                      5.heightBox,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(
                          3,
                          (index) => Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CircleAvatar(
                              radius: 25,
                              backgroundColor: lightGrey,
                              child:
                                  Image.asset(socialIconList[index], width: 30),
                            ),
                          ),
                        ),
                      )
                    ],
                  )
                      .box
                      .white
                      .rounded
                      .padding(
                        const EdgeInsets.all(16),
                      )
                      .width(context.screenWidth - 70)
                      .shadowSm
                      .make(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
