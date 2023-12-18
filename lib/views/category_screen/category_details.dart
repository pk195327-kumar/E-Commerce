import 'package:e_commerce/widgets_common/bg_widget.dart';

import '../../consts/consts.dart';

class CategoryDetails extends StatelessWidget {
  final String? title;
  const CategoryDetails({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return bgWidget(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: title!.text.fontFamily(bold).white.make(),
        ),
        body: Container(
          padding: const EdgeInsets.all(12),
          child: Column(
            children: [
              SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                    6,
                    (index) => "Baby Clothing"
                        .text
                        .size(12)
                        .fontFamily(semibold)
                        .color(darkFontGrey)
                        .makeCentered()
                        .box
                        .white
                        .margin(const EdgeInsets.symmetric(horizontal: 4))
                        .rounded
                        .size(120, 60)
                        .make(),
                  ),
                ),
              ),
              Container(
                color: lightGrey,
                child: GridView.builder(
                    shrinkWrap: true,
                    itemCount: 6,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisSpacing: 8,crossAxisSpacing: 8), itemBuilder: (context,index){
                  return Container();
                }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
