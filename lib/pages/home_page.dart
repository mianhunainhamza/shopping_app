import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shopping_app/core/store.dart';
import 'package:shopping_app/models/cart.dart';
import 'package:shopping_app/models/catalog.dart';
import 'package:shopping_app/utils/routes.dart';
import 'package:shopping_app/widgets/theme.dart';
import 'dart:convert';
import "package:velocity_x/velocity_x.dart";

import '../widgets/home_widgets/catalog_header.dart';
import '../widgets/home_widgets/catalog_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(const Duration(seconds: 2));
    var catalogJson = await rootBundle.loadString("assets/files/catalog.json");
    var decodeData = jsonDecode(catalogJson);
    var productsData = decodeData["products"];
    CatalogModel.items = List.from(productsData)
        .map<Item>((item) => Item.fromMap(item))
        .toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final _cart = (VxState.store as MyStore).cart;
    return Scaffold(
      floatingActionButton: VxBuilder(
        mutations: {AddMutation,RemoveMutation},
        builder: (context,MyStore,none)
      { return FloatingActionButton(
        onPressed: (){
          Navigator.pushNamed(context, MyRoutes.cartRoute);
        },
        backgroundColor: MyTheme.darkBlusihColor,
        child: const Icon(CupertinoIcons.cart,color: Colors.white,),
      ).badge(size: 20,count: _cart.items.length,color: (context.theme.colorScheme.primary),textStyle: TextStyle(color: (context.canvasColor),fontSize: 12,fontWeight: FontWeight.bold));
      }
      ),
      backgroundColor: context.canvasColor,
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(30),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CatalogHeader(),
                if(CatalogModel.items.isNotEmpty)
                  const CatalogList().pOnly(top: 15).expand()
                else
                  CircularProgressIndicator(valueColor: AlwaysStoppedAnimation<Color>(context.theme.colorScheme.secondary),).centered().expand(),
              ])
        ),
      )
    );
  }
}