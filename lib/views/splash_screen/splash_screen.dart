import 'package:e_commerce/consts/consts.dart';
import 'package:get/get.dart';
import '../../widgets_common/app_logo.dart';
import '../auth_screens/login_screen/login_screen.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  changeScreen(){
    Future.delayed(const Duration(seconds: 5),(){
      // using getX
     Get.to(()=> const LoginScreen());
    });
  }

  @override
  void initState() {
    super.initState();
    changeScreen();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: redColor,
      body: Center(
        child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Image.asset(
                icSplashBg,
                width: 300,
              ),
            ),
            20.heightBox,
            appLogoWidget(),
            10.heightBox,
            // const Text(appName,style: TextStyle(fontFamily: "bold",fontSize: 22,color: Colors.white),)
            appName.text.fontFamily(bold).size(22).white.make(),
            5.heightBox,
            appVersion.text.white.make(),
          ],
        ),
      ),
    );
  }
}
