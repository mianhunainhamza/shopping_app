import 'package:flutter/material.dart';
import 'package:shopping_app/pages/home_detail_page.dart';
import 'package:velocity_x/velocity_x.dart';
import '../../models/catalog.dart';
import 'add_to_cart.dart';
import 'catalog_image.dart';

class CatalogList extends StatelessWidget {
  const CatalogList({super.key});

  @override
  Widget build(BuildContext context) {
    return  ListView.builder(
        primary: false,
        shrinkWrap: true,
        itemCount: CatalogModel.items.length, itemBuilder: (context, index){
      final catalog = CatalogModel.items[index];
      return InkWell(
          onTap: ()
          {
            Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeDetailPage(catalog: catalog)));
          },
          child: CatalogItem(catalog: catalog));
    });
  }
}

class CatalogItem extends StatelessWidget {
   const CatalogItem({super.key, required this.catalog});
  final Item catalog;
  @override
  Widget build(BuildContext context) {
    return VxBox(
        child: Row(
          children: [
            Hero(
                tag:Key(catalog.id.toString()),
                child: CatalogImage(image: catalog.image)),
            Expanded(child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                catalog.name.text.bold.color(context.theme.colorScheme.secondary).lg.make(),
                catalog.desc.text.textStyle(context.captionStyle).make().py(5),
                10.heightBox,
                ButtonBar(
                  buttonPadding: EdgeInsets.zero,
                  alignment: MainAxisAlignment.spaceBetween,
                  children: [
                    "Rs ${catalog.prices}".text.lg.bold.make(),
                    AddToCart(catalog: catalog).wh(50,40)
                  ],).pOnly(right: 8)
              ],))],
        )
    ).color(context.cardColor).rounded.square(150).make().py(17);
  }
}