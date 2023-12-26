
import 'package:e_commerce/consts/consts.dart';

Widget detailsCard ({width,String? title,String? count}){
  return   Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      count!.text.color(darkFontGrey).size(16).fontFamily(bold).make(),
      5.heightBox,
      title!.text.color(darkFontGrey).make(),
    ],
  ).box.rounded.white.padding(const EdgeInsets.all(4)).height(70).width(width).make();
}