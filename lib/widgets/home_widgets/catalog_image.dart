import 'package:flutter/cupertino.dart';
import 'package:velocity_x/velocity_x.dart';

import '../theme.dart';

class CatalogImage extends StatelessWidget {
  const CatalogImage({super.key, required this.image});
  final String image;
  @override
  Widget build(BuildContext context) {
    return Image.network(image).box.rounded.p8.color(context.canvasColor).make().p16().w40(context);
  }
}