import 'package:e_commerce/Controller/auth_controller.dart';
import 'package:get/get.dart';

import '../../../consts/consts.dart';
import '../../../widgets_common/app_logo.dart';
import '../../../widgets_common/bg_widget.dart';
import '../../../widgets_common/custom_text-fields.dart';
import '../../../widgets_common/our_button.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool? isCheck = false;
  var controller =Get.put(AuthController());

  // textEditingController

  var nameController = TextEditingController();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var passwordRetypeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size.height * 0.1;
    return bgWidget(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: size,
                ),
                appLogoWidget(),
                10.heightBox,
                "Join the $appName".text.fontFamily(bold).white.size(18).make(),
                10.heightBox,
                Column(
                  children: [
                    customTextField(
                      hint: nameHint,
                      title: name,
                      controller: nameController
                    ),
                    customTextField(
                      hint: emailHint,
                      title: email,
                      controller: emailController
                    ),
                    customTextField(
                      hint: passwordHint,
                      title: password,
                        controller: passwordController
                    ),
                    customTextField(
                      hint: passwordHint,
                      title: reTypePassword,
                      controller: passwordRetypeController
                    ),
                    // Align(
                    //   alignment: Alignment.centerRight,
                    //   child: TextButton(
                    //     onPressed: () {},
                    //     child: forgetPass.text.make(),
                    //   ),
                    // ),
                    Row(
                      children: [
                        Checkbox(
                          checkColor: Colors.white,
                          activeColor: redColor,
                          value: isCheck,
                          onChanged: (newValue) {
                            setState(() {
                              isCheck = newValue;
                            });
                          },
                        ),
                        Expanded(
                          child: RichText(
                            text: const TextSpan(
                              children: [
                                TextSpan(
                                  text: "I agree to the",
                                  style: TextStyle(
                                      fontFamily: bold, color: fontGrey),
                                ),
                                TextSpan(
                                  text: termsAndConditions,
                                  style: TextStyle(
                                      fontFamily: bold, color: redColor),
                                ),
                                TextSpan(
                                  text: "& ",
                                  style: TextStyle(
                                      fontFamily: bold, color: fontGrey),
                                ),
                                TextSpan(
                                  text: privacyPolicy,
                                  style: TextStyle(
                                      fontFamily: bold, color: redColor),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    5.heightBox,
                    ourButton(
                            function: () {},
                            title: signup,
                            bgcolor: isCheck == true ? redColor : Colors.grey.shade500 ,
                            textColor: Colors.white)
                        .box
                        .width(context.screenWidth - 50)
                        .make(),
                    10.heightBox,
                    RichText(
                      text: const TextSpan(
                        children: [
                          TextSpan(
                            text: alreadyHaveAccount,
                            style: TextStyle(fontFamily: bold, color: fontGrey),
                          ),
                          WidgetSpan(
                            child: SizedBox(
                              width: 5,
                            ),
                          ),
                          TextSpan(
                            text: login,
                            style: TextStyle(fontFamily: bold, color: redColor),
                          ),
                        ],
                      ),
                    ).onTap(() {
                      Get.back();
                    }),
                  ],
                )
                    .box
                    .white
                    .rounded
                    .padding(
                      const EdgeInsets.all(16),
                    )
                    .width(context.screenWidth - 50)
                    .shadowSm
                    .make(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
