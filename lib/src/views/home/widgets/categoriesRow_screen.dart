// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:platform_myhrakii/core/colors.dart';
import '../../../controller/category_controller.dart';

class CategoriesRow extends StatelessWidget {
  CategoriesRow({Key? key}) : super(key: key);

  final CategoriesController categoriesController =
      Get.put(CategoriesController());

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    categoriesController.fetchCategories();

    return Container(
      margin: const EdgeInsets.only(top: 7),
      width: size.width,
      height: size.height * 0.14,
      child: Obx(() {
        return ListView.builder(
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          itemCount: categoriesController.categories.length,
          itemBuilder: (context, index) {
            var category = categoriesController.categories[index];
            var imageUrl = category['blobImageURL'] ?? 'default_image_path';

            return Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 43,
                    key: Key(imageUrl),
                    backgroundImage: NetworkImage(imageUrl),
                  ),
                  SizedBox(
                    height: size.height * 0.008,
                  ),
                  Flexible(
                    child: Text(
                      category['categoryName'] ?? '',
                      style: const TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                        color: primary,
                      ),
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.visible,
                    ),
                  ),
                ],
              ),
            );
          },
        );
      }),
    );
  }
}




// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:platform_myhrakii/core/colors.dart';
// import 'package:shimmer/shimmer.dart'; 
// import '../../../controller/category_controller.dart';

//   final CategoriesController categoriesController =
//       Get.put(CategoriesController());
// class CategoriesRow extends StatelessWidget {
//   CategoriesRow({Key? key}) : super(key: key);


//   @override
//   Widget build(BuildContext context) {
//     var size = MediaQuery.of(context).size;
//     categoriesController.fetchCategories();

//     return Container(
//       margin: const EdgeInsets.only(top: 7),
//       width: size.width,
//       height: size.height * 0.14,
//       child: Obx(() {
//         if (categoriesController.categories.isEmpty) {
//           return const ShimmerCategoriesLoader(); 
//         }

//         return ListView.builder(
//           scrollDirection: Axis.horizontal,
//           physics: const BouncingScrollPhysics(),
//           itemCount: categoriesController.categories.length,
//           itemBuilder: (context, index) {
//             var category = categoriesController.categories[index];
//             var imageUrl = category['blobImageURL'] ?? 'default_image_path';

//             return Padding(
//               padding: const EdgeInsets.all(10.0),
//               child: Column(
//                 children: [
//                   CircleAvatar(
//                     radius: 43,
//                     key: Key(imageUrl),
//                     backgroundImage: NetworkImage(imageUrl),
//                   ),
//                   SizedBox(
//                     height: size.height * 0.008,
//                   ),
//                   Flexible(
//                     child: Text(
//                       category['categoryName'] ?? '',
//                       style: const TextStyle(
//                         fontWeight: FontWeight.w500,
//                         fontSize: 12,
//                         color: primary,
//                       ),
//                       textAlign: TextAlign.center,
//                       overflow: TextOverflow.visible,
//                     ),
//                   ),
//                 ],
//               ),
//             );
//           },
//         );
//       }),
//     );
//   }
// }

// class ShimmerCategoriesLoader extends StatelessWidget {
//   const ShimmerCategoriesLoader({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Shimmer.fromColors(
//       baseColor: Colors.grey[300]!,
//       highlightColor: Colors.grey[100]!,
//       child: ListView.builder(
//         scrollDirection: Axis.horizontal,
//         itemCount: categoriesController.categories.length, 
//         itemBuilder: (context, index) {
//           return Padding(
//             padding: const EdgeInsets.all(10.0),
//             child: Column(
//               children: [
//                 const CircleAvatar(
//                   radius: 43,
//                   backgroundColor: Colors.white,
//                 ),
//                 SizedBox(
//                   height: MediaQuery.of(context).size.height * 0.008,
//                 ),
//                 Container(
//                   width: 50,
//                   height: 10,
//                   color: Colors.white,
//                 ),
//               ],
//             ),
//           );
//         },
//       ),
//     );
//   }
// }



