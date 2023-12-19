import 'package:e_commerce/widgets_common/our_button.dart';

import '../../consts/consts.dart';

class ItemDetails extends StatelessWidget {
  final String? title;
  const ItemDetails({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
        elevation: 0,
        title: title!.text.color(darkFontGrey).fontFamily(bold).make(),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.share,
              )),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.favorite_outline,
              )),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    VxSwiper.builder(
                        height: 350,
                        autoPlay: true,
                        aspectRatio: 16 / 9,
                        itemCount: 3,
                        itemBuilder: (context, index) {
                          return Image.asset(
                            imgFc5,
                            width: double.infinity,
                            fit: BoxFit.cover,
                          );
                        }),
                    10.heightBox,
                    title!.text
                        .size(16)
                        .color(darkFontGrey)
                        .fontFamily(semibold)
                        .make(),
                    10.heightBox,
                    VxRating(
                      onRatingUpdate: (val) {},
                      normalColor: textFieldGrey,
                      selectionColor: golden,
                      count: 5,
                      size: 25,
                      stepInt: true,
                    ),
                    10.heightBox,
                    "\$30,000"
                        .text
                        .color(redColor)
                        .fontFamily(bold)
                        .size(18)
                        .make(),
                    10.heightBox,
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              "Seller".text.white.fontFamily(semibold).make(),
                              5.heightBox,
                              "In House Brands"
                                  .text
                                  .fontFamily(semibold)
                                  .color(darkFontGrey)
                                  .size(16)
                                  .make(),
                            ],
                          ),
                        ),
                        const CircleAvatar(
                          backgroundColor: whiteColor,
                          child: Icon(
                            Icons.message_rounded,
                            color: darkFontGrey,
                          ),
                        ),
                      ],
                    )
                        .box
                        .height(60)
                        .padding(const EdgeInsets.symmetric(horizontal: 16))
                        .color(textFieldGrey)
                        .make(),
                    20.heightBox,
                    Column(
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              child: "Color".text.color(textFieldGrey).make(),
                            ),
                            Row(
                              children: List.generate(
                                3,
                                (index) => VxBox()
                                    .roundedFull
                                    .margin(const EdgeInsets.symmetric(
                                        horizontal: 4))
                                    .size(40, 40)
                                    .color(Vx.randomPrimaryColor)
                                    .make(),
                              ),
                            )
                          ],
                        ).box.padding(const EdgeInsets.all(8)).make()
                      ],
                    ).box.white.shadowSm.make()
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            width: double.infinity,
            height: 60,
            child: ourButton(
              function: () {},
              title: "Add to Cart",
              textColor: whiteColor,
              bgcolor: redColor,
            ),
          )
        ],
      ),
    );
  }
}
