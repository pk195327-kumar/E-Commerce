import 'package:e_commerce/consts/social_list.dart';
import 'package:e_commerce/widgets_common/bg_widget.dart';
import 'package:get/get.dart';
import '../../consts/consts.dart';
import 'category_details.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return bgWidget(
      child: Scaffold(
        appBar: AppBar(title: "Categories".text.fontFamily(bold).white.make(),elevation: 0),
        body: Container(

          padding: const EdgeInsets.all(12),
          child: GridView.builder(
              physics: const BouncingScrollPhysics(),
              shrinkWrap: true,
              itemCount: 9,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,mainAxisSpacing: 15,crossAxisSpacing: 10,mainAxisExtent: 200), itemBuilder: (context,index){
            return Column(children: [
             Image.asset(categoriesImages[index],height: 100,width: 200,fit: BoxFit.cover,),
              10.heightBox,
              categoriesList[index].text.color(darkFontGrey).align(TextAlign.center).make(),
            ],).box.white.clip(Clip.antiAlias).rounded.outerShadowSm.make().onTap(() {
              Get.to(()=> CategoryDetails(title: categoriesList[index],), );
            });
          }),
        ),
      ),
    );
  }
}
