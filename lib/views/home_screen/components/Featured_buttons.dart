import 'package:e_commerce/consts/consts.dart';

Widget featuredButton({String? title,icon}){
  return Row(
    children: [
      Image.asset(icon,width: 60,fit: BoxFit.fill),
      10.widthBox,
      title!.text.fontFamily(semibold).color(darkFontGrey).make(),
    ],
  ).box.white.width(200).padding(const EdgeInsets.all(4)).margin(const EdgeInsets.symmetric(horizontal: 8)).roundedSM.outerShadowSm.make();
}