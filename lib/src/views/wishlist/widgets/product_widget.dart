// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import '../../../../core/colors.dart';
// import '../../productsDetails/product_screen.dart';

// class ProductWidegts extends StatelessWidget {
//   const ProductWidegts({super.key, required this.size});

//   final Size size;

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Container(
//         height: size.height * 0.4,
//         width: size.width * 0.47,
//         decoration: BoxDecoration(
//             color: lightgrey,
//             // color: green,
//             borderRadius: BorderRadius.circular(8)),
//         child: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             // mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Stack(
//                 children: [
//                   SizedBox(
//                     child: Container(
//                       height: size.height * 0.2,
//                       width: size.width * 0.44,
//                       // color: primary,
//                       decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(8),
//                           image: const DecorationImage(
//                               image:
//                                   AssetImage('assets/images/jootiewomen.jpg'),
//                               fit: BoxFit.cover)),
//                     ),
//                   ),
//                   Positioned(
//                     right: 2,
//                     child: IconButton(
//                       onPressed: () {},
//                       icon: const Icon(
//                         Icons.favorite_rounded,
//                         color: primary,
//                       ),
//                     ),
//                   ),
//                   Positioned(
//                     right: 1,
//                     bottom: 1,
//                     child: Row(
//                       children: [
//                         IconButton(
//                           onPressed: () {},
//                           icon: const Icon(
//                             Icons.star,
//                             size: 16,
//                             color: green,
//                           ),
//                         ),
//                         const Text(
//                           '4.4 (20)',
//                           style: TextStyle(color: grey),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//               SizedBox(height: size.height * 0.02),
//               Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   const Text(
//                     'Jhutti',
//                     style:
//                         TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
//                   ),
//                   const Text(
//                     'By Creative Footwear',
//                     style: TextStyle(
//                       fontSize: 12,
//                       fontWeight: FontWeight.w300,
//                       fontStyle: FontStyle.italic,
//                       color: Color(0xFF868686),
//                     ),
//                   ),
//                   const Text(
//                     '₹ 2000',
//                     style: TextStyle(
//                       fontSize: 16,
//                       fontWeight: FontWeight.w500,
//                       color: Color(0xFF000000),
//                     ),
//                   ),
//                   const Text(
//                     '2 products in stock',
//                     style: TextStyle(
//                       fontSize: 12,
//                       fontWeight: FontWeight.w300,
//                       fontStyle: FontStyle.italic,
//                       color: Color(0xFF868686),
//                     ),
//                   ),
//                   SizedBox(height: size.height * 0.02),
//                   Center(
//                     child: Container(
//                       height: size.height * 0.034,
//                       width: size.width * 0.33,
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(10),
//                         gradient:
//                             const LinearGradient(colors: [primary, primaryy]),
//                         color: primary,
//                       ),
//                       child: InkWell(
//                         onTap: () async {
//                           Get.to(const ProductDetailsScreen());
//                         },
//                         child: const Center(
//                           child: Text(
//                             'MOVE TO CART',
//                             style: TextStyle(
//                               color: white,
//                               fontSize: 13,
//                               fontWeight: FontWeight.w600,
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),
//      ) ]
     
//       );
//   }
//     }
//       // children: [
//         // Container(
//         //   height: size.height * 0.41,
//         //   width: size.width * 0.47,
//           // decoration: BoxDecoration(
//               // color: lightgrey,
//               // color: green,
//               // borderRadius: BorderRadius.circular(8)),
//           // child: Padding(
//           //   padding: const EdgeInsets.all(8.0),
//           //   child: Column(
//           //     crossAxisAlignment: CrossAxisAlignment.start,
//           //     // mainAxisAlignment: MainAxisAlignment.center,
//           //     children: [
//                 // Stack(
//                 //   children: [
//                     // Container(
//                     //   height: size.height * 0.3,
//                     //   width: size.width * 0.44,
//                       // color: primary,
//                       // decoration: BoxDecoration(
//                       //     borderRadius: BorderRadius.circular(8),
//                       //     image: const DecorationImage(
//                       //         image:
//                       //             AssetImage('assets/images/jootiewomen.jpg'),
//                       //         fit: BoxFit.cover)),
//                     // ),
//                     // Positioned(
//                     //   right: 2,
//                     //   child: IconButton(
//                     //     onPressed: () {},
//                     //     icon: const Icon(
//                     //       Icons.favorite_rounded,
//                     //       color: primary,
//                     //     ),
//                     //   ),
//                     // ),
//                     // Positioned(
//                     //   right: 1,
//                     //   bottom: 1,
//                     //   child: Row(
//                     //     children: [
//                     //       IconButton(
//                     //         onPressed: () {},
//                     //         icon: const Icon(
//                     //           Icons.star,
//                     //           size: 16,
//                     //           color: green,
//                     //         ),
//                     //       ),
//                     //       const Text(
//                     //         '4.4 (20)',
//                     //         style: TextStyle(color: grey),
//                     //       ),
//                     //     ],
//                     //   ),
//                     // ),
//                 //   ],
//                 // ),
//                 // SizedBox(height: size.height * 0.02),
//                 // Column(
//                 //   crossAxisAlignment: CrossAxisAlignment.start,
//                 //   children: [
//                 //     const Text(
//                 //       'Jhutti',
//                 //       style:
//                 //           TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
//                 //     ),
//                 //     const Text(
//                 //       'By Creative Footwear',
//                 //       style: TextStyle(
//                 //         fontSize: 12,
//                 //         fontWeight: FontWeight.w300,
//                 //         fontStyle: FontStyle.italic,
//                 //         color: Color(0xFF868686),
//                 //       ),
//                 //     ),
//                 //     const Text(
//                 //       '₹ 2000',
//                 //       style: TextStyle(
//                 //         fontSize: 16,
//                 //         fontWeight: FontWeight.w500,
//                 //         color: Color(0xFF000000),
//                 //       ),
//                 //     ),
//                 //     const Text(
//                 //       '2 products in stock',
//                 //       style: TextStyle(
//                 //         fontSize: 12,
//                 //         fontWeight: FontWeight.w300,
//                 //         fontStyle: FontStyle.italic,
//                 //         color: Color(0xFF868686),
//                 //       ),
//                 //     ),
//                 //     SizedBox(height: size.height * 0.02),
//                 //     Center(
//                 //       child: Container(
//                 //         height: size.height * 0.034,
//                 //         width: size.width * 0.33,
//                 //         decoration: BoxDecoration(
//                 //           borderRadius: BorderRadius.circular(10),
//                 //           gradient:
//                 //               const LinearGradient(colors: [primary, primaryy]),
//                 //           color: primary,
//                 //         ),
//                 //         child: InkWell(
//                 //           onTap: () async {
//                 //             Get.to(const ProductDetailsScreen());
//                 //           },
//                 //           child: const Center(
//                 //             child: Text(
//                 //               'MOVE TO CART',
//                 //               style: TextStyle(
//                 //                 color: white,
//                 //                 fontSize: 13,
//                 //                 fontWeight: FontWeight.w600,
//                 //               ),
//                 //             ),
//                 //           ),
//                 //         ),
//                 //       ),
//                 //     ),
//                 //   ],
//                 // ),
//             //   ],
//             // ),
//       //     ),
//       //  ] );
//     //   ],
//     // );
// //   }
// // }
