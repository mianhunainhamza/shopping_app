// // ignore_for_file: public_member_api_docs, sort_constructors_first
// import 'package:flutter/material.dart';
//
// import '../models/catalog.dart';
//
// class ItemWidget extends StatelessWidget {
//   const ItemWidget({
//     Key? key,
//     required this.item,
//   }) : super(key: key);
//   final Item item;
//
//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       child: ListTile(
//         onTap: () {
//           // print("Item Pressed");
//         },
//         leading: Image.network(item.image),
//         title: Text(item.name,
//             style: const TextStyle(color: Colors.black, fontSize: 18)),
//         subtitle: Text(item.desc,
//             style: const TextStyle(color: Colors.black, fontSize: 13)),
//         trailing: Text(
//           "Rs ${item.prices}",
//           style: const TextStyle(
//               color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),
//         ),
//       ),
//     );
//   }
// }
