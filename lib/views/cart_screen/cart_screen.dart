import '../../consts/consts.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      backgroundColor: whiteColor,
      body: Center(
        child: Text("Empty Cart",style: TextStyle(fontFamily: semibold,color: darkFontGrey)),
      ),
    );
  }
}