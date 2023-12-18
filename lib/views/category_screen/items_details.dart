import '../../consts/consts.dart';

class ItemDetails extends StatelessWidget {
  final String? title;
  const ItemDetails({super.key,required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightGrey,
      appBar: AppBar(
        elevation: 0,
        title: title!.text.color(darkFontGrey).fontFamily(bold).make(),
        actions: [
          IconButton(onPressed: (){}, icon:const Icon(Icons.share,)),
          IconButton(onPressed: (){}, icon:const Icon(Icons.favorite_outline,)),
        ],
      ),
      body: Container(),
    );
  }
}
