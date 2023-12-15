import 'package:e_commerce/consts/consts.dart';

Widget customTextField({String? title,String? hint,TextEditingController? controller}){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      title!.text.color(redColor).fontFamily(bold).size(16).make(),
      5.heightBox,
      TextFormField(
        controller: controller,
        decoration:  InputDecoration(
          hintText: hint,
          hintStyle: const TextStyle(
            fontFamily: semibold,
            color: textFieldGrey,
          ),
          isDense: true,
          fillColor: lightGrey,
          filled: true,
          border: InputBorder.none,
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(10),
          ),
          focusedBorder:  OutlineInputBorder(
            borderSide: const BorderSide(
              color: redColor,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
      5.heightBox,
    ],
  );
}