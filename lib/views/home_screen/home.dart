import 'package:e_commerce/views/cart_screen/cart_screen.dart';
import 'package:e_commerce/views/category_screen/category_screen.dart';
import 'package:e_commerce/views/home_screen/home_screen.dart';
import 'package:e_commerce/views/profile_screen/profile_screen.dart';
import 'package:get/get.dart';
import '../../Controller/home_controller.dart';
import '../../consts/consts.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    var navbarItems = [
      BottomNavigationBarItem(
        icon: Image.asset(
          icHome,
          width: 26,
        ),
        label: home,
      ),
      BottomNavigationBarItem(
        icon: Image.asset(
          icCategories,
          width: 26,
        ),
        label: categories,
      ),
      BottomNavigationBarItem(
        icon: Image.asset(
          icCart,
          width: 26,
        ),
        label: cart,
      ),
      BottomNavigationBarItem(
        icon: Image.asset(
          icProfile,
          width: 26,
        ),
        label: account,
      )
    ];

    var navBody = [
     const HomeScreen(),
     const CategoryScreen(),
     const CartScreen(),
     const ProfileScreen(),
    ];

    var controller = Get.put(HomeController());
    return Scaffold(
      body: Column(
        children: [
          Obx(
            () => Expanded(
              child: navBody.elementAt(controller.currentNavIndex.value),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          currentIndex: controller.currentNavIndex.value,
          items: navbarItems,
          backgroundColor: whiteColor,
          selectedItemColor: redColor,
          type: BottomNavigationBarType.fixed,
          selectedLabelStyle: const TextStyle(fontFamily: semibold),
          onTap: (val) {
            controller.currentNavIndex.value = val;
          },
        ),
      ),
    );
  }
}
