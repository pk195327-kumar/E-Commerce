import 'package:e_commerce/consts/social_list.dart';
import 'package:e_commerce/views/profile_screen/components/details_card.dart';
import 'package:e_commerce/widgets_common/bg_widget.dart';

import '../../consts/consts.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return bgWidget(
      child: Scaffold(
        body: SafeArea(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: const Align(
                    alignment: Alignment.topRight,
                    child: Icon(Icons.edit, color: whiteColor),
                  ).onTap(() {}),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Row(
                    children: [
                      Image.asset(
                        imgProfile2,
                        width: 60,
                        fit: BoxFit.cover,
                      ).box.roundedFull.clip(Clip.antiAlias).make(),
                      5.widthBox,
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            "Dummy User".text.fontFamily(semibold).white.make(),
                            "dummyEmail@gmail.com".text.white.make(),
                          ],
                        ),
                      ),
                      OutlinedButton(
                        style: OutlinedButton.styleFrom(
                            side: const BorderSide(color: whiteColor)),
                        onPressed: () {},
                        child: "Logout".text.fontFamily(semibold).white.make(),
                      ),
                    ],
                  ),
                ),
                20.heightBox,
               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                 children: [
                   detailsCard(
                     count: "15",
                     width: context.screenWidth /3.4 ,
                     title: "in your cart",
                   ), detailsCard(
                     count: "33",
                     width: context.screenWidth /3.4 ,
                     title: "in your wishlist",
                   ), detailsCard(
                     count: "2325",
                     width: context.screenWidth /3.4 ,
                     title: "your orders",
                   ),
                 ],
               ),
                15.heightBox,
                ListView.separated(
                    shrinkWrap: true,
                    itemBuilder: (context,index){
                      return ListTile(
                        leading: Image.asset(profileListIcons[index],width: 22),
                        title: profileList[index].text.fontFamily(semibold).color(darkFontGrey).make(),
                      );
                    }, separatorBuilder: (context,index){
                  return const Divider(
                    thickness: 1,
                    color: lightGrey,
                  );
                }, itemCount: profileList.length).box.shadowSm.white.margin(const EdgeInsets.all(12)).rounded.padding( const EdgeInsets.symmetric(horizontal: 16)).make().box.color(redColor).make(),
              ],
            ),
        ),
      ),
    );
  }
}
