import 'package:e_commerce/consts/consts.dart';

Widget ourButton({
  Color? textColor,
  Color? bgcolor,
  String? title,
  required void Function()? function,
}){
  return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: bgcolor,
        padding: const EdgeInsets.all(12),
      ),
      onPressed: function, child: title!.text.fontFamily(bold).color(textColor).make());
}