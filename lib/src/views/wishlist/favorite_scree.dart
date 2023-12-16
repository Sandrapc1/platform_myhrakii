// ignore_for_file: sized_box_for_whitespace
import 'package:flutter/material.dart';
import 'package:platform_myhrakii/src/views/checkout/widgets/search_bar.dart';
import 'package:platform_myhrakii/src/views/drawer/drawer.dart';
import '../../../core/colors.dart';
import 'widgets/appbar_widget.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: white,
      drawer: const DrawerBar(),
      appBar: Appbarwidget(size, context),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SearchScreenWidget(size: size),
              const SizedBox(height: 8),
               Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('My Wishlist (8)',
                      style:
                           TextStyle(fontWeight: FontWeight.w500, fontSize: 17)),
                          TextButton(onPressed: (){}, 
                          child: const Text('Clear All',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 17,
                        decorationColor: primary,
                        decorationThickness: 1,
                        decoration: TextDecoration.underline,
                        color: primary,
                      )),)
                  
                ],
              ),
              SizedBox(height: size.height * 0.02),
              GridView.builder(
                shrinkWrap: true,
                // physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing:5,
                  crossAxisSpacing: 14,
                ),
                itemCount: 7,
                itemBuilder: (context, index) {
                  return Container(
                  height: size.height * 0.6,
                  width: size.width * 0.47,
                  decoration: BoxDecoration(
                      // color: lightgrey,
                      color: green,
                      borderRadius: BorderRadius.circular(8)),
                  // child: Padding(
                  //   padding: const EdgeInsets.all(8.0),
                  //   child: Column(
                  //     crossAxisAlignment: CrossAxisAlignment.start,
                  //     // mainAxisAlignment: MainAxisAlignment.center,
                  //     children: [
                  //       Stack(
                  //         children: [
                  //           Container(
                  //             height: size.height * 0.2,
                  //             width: size.width * 0.44,
                  //             // color: primary,
                  //             decoration: BoxDecoration(
                  //                 borderRadius: BorderRadius.circular(8),
                  //                 image: const DecorationImage(
                  //                     image:
                  //                         AssetImage('assets/images/jootiewomen.jpg'),
                  //                     fit: BoxFit.cover)),
                  //           ),
                  //           Positioned(
                  //             right: 2,
                  //             child: IconButton(
                  //               onPressed: () {},
                  //               icon: const Icon(
                  //                 Icons.favorite_rounded,
                  //                 color: primary,
                  //               ),
                  //             ),
                  //           ),
                  //           Positioned(
                  //             right: 1,
                  //             bottom: 1,
                  //             child: Row(
                  //               children: [
                  //                 IconButton(
                  //                   onPressed: () {},
                  //                   icon: const Icon(
                  //                     Icons.star,
                  //                     size: 16,
                  //                     color: green,
                  //                   ),
                  //                 ),
                  //                 const Text(
                  //                   '4.4 (20)',
                  //                   style: TextStyle(color: grey),
                  //                 ),
                  //               ],
                  //             ),
                  //           ),
                  //         ],
                  //       ),
                  //       SizedBox(height: size.height * 0.02),
                  //       Column(
                  //         crossAxisAlignment: CrossAxisAlignment.start,
                  //         children: [
                  //           const Text(
                  //             'Jhutti',
                  //             style:
                  //                 TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  //           ),
                  //           const Text(
                  //             'By Creative Footwear',
                  //             style: TextStyle(
                  //               fontSize: 12,
                  //               fontWeight: FontWeight.w300,
                  //               fontStyle: FontStyle.italic,
                  //               color: Color(0xFF868686),
                  //             ),
                  //           ),
                  //           const Text(
                  //             '₹ 2000',
                  //             style: TextStyle(
                  //               fontSize: 16,
                  //               fontWeight: FontWeight.w500,
                  //               color: Color(0xFF000000),
                  //             ),
                  //           ),
                  //           const Text(
                  //             '2 products in stock',
                  //             style: TextStyle(
                  //               fontSize: 12,
                  //               fontWeight: FontWeight.w300,
                  //               fontStyle: FontStyle.italic,
                  //               color: Color(0xFF868686),
                  //             ),
                  //           ),
                  //           SizedBox(height: size.height * 0.02),
                  //           Center(
                  //             child: Container(
                  //               height: size.height * 0.034,
                  //               width: size.width * 0.33,
                  //               decoration: BoxDecoration(
                  //                 borderRadius: BorderRadius.circular(10),
                  //                 gradient:
                  //                     const LinearGradient(colors: [primary, primaryy]),
                  //                 color: primary,
                  //               ),
                  //               child: InkWell(
                  //                 onTap: () async {
                  //                   // Get.to(const ProductDetailsScreen());
                  //                 },
                  //                 child: const Center(
                  //                   child: Text(
                  //                     'MOVE TO CART',
                  //                     style: TextStyle(
                  //                       color: white,
                  //                       fontSize: 13,
                  //                       fontWeight: FontWeight.w600,
                  //                     ),
                  //                   ),
                  //                 ),
                  //               ),
                  //             ),
                  //           ),
                  //         ],
                  //       ),
                  //     ],
                  //   ),
                  // ),
                       );
                  // return ProductWidegts(size: size);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}


















