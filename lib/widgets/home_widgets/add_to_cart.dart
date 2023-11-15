import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopping_app/core/store.dart';
import 'package:velocity_x/velocity_x.dart';
import '../../models/cart.dart';
import '../../models/catalog.dart';
import '../theme.dart';

class AddToCart extends StatelessWidget {
  final Item catalog;
   AddToCart({
    super.key, required this.catalog,
  });
  @override
  Widget build(BuildContext context)
  {
    VxState.watch(context, on: [AddMutation,RemoveMutation]);
    final CartModel _cart= (VxState.store as MyStore).cart;
    bool isInCart= _cart.items.contains(catalog)??false;
    return ElevatedButton(
        onPressed: (){
          if(!isInCart)
          {
            AddMutation(catalog);
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: "Item has been added".text.white.make()));
          }
          else {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: "Item already added".text.white.make()));
          }
        },
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(MyTheme.darkBlusihColor),shape: MaterialStateProperty.all(const StadiumBorder())
        ),
        child: isInCart ? const Icon(Icons.done): const Icon(CupertinoIcons.cart_badge_plus));
  }
}