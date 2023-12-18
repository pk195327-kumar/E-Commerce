import 'package:e_commerce/views/category_screen/items_details.dart';
import 'package:e_commerce/widgets_common/bg_widget.dart';
import 'package:get/get.dart';
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
              20.heightBox,
              Expanded(
                child: GridView.builder(
                    shrinkWrap: true,
                    itemCount: 6,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisExtent: 250,mainAxisSpacing: 8,crossAxisSpacing: 8), itemBuilder: (context,index){
                  return  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(imgP5,width: 200,height: 150,fit: BoxFit.cover,),
                      const Spacer(),
                      "Laptop 4GB/64GB".text.color(darkFontGrey).fontFamily(semibold).make(),
                      10.heightBox,
                      "\$600".text.color(redColor).fontFamily(bold).size(16).make(),
                    ],
                  ).box.white.margin(const EdgeInsets.symmetric(horizontal: 4)).roundedSM.outerShadowSm.padding(const EdgeInsets.all(12)).make().onTap(() { 
                     Get.to(()=> const ItemDetails(title: "dummy click"));
                  });
                }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
