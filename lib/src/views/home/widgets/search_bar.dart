// import 'package:flutter/material.dart';
// import '../../../../core/colors.dart';

// class SearchBarWidget extends StatelessWidget {
//   const SearchBarWidget({
//     super.key,
//     required this.size,
//   });

//   final Size size;

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       children: [
//         Container(
//           height: size.height * 0.052,
//           width: size.width * 0.8,
//           decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(25.0),
//               border: Border.all(color: grey)
//               // color: Colors.grey[200],
//               ),
//           margin: const EdgeInsets.all(16.0),
//           padding: const EdgeInsets.symmetric(horizontal: 16.0),
//           child: const Row(
//             children: [
//               Icon(Icons.search, color: primaryy),
//               SizedBox(width: 8.0),
//               Expanded(
//                 child: TextField(
//                   decoration: InputDecoration(
//                     hintText: 'Search by product',
//                     hintStyle: TextStyle(color: Colors.grey),
//                     border: InputBorder.none,
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//         const CircleAvatar(
//           backgroundColor: primary,
//           radius: 16,
//           child: Icon(
//             Icons.keyboard_voice_outlined,
//             color: white,
//             size: 28,
//           ),
//         )
//       ],
//     );
//   }
// }


import 'package:flutter/material.dart';
import '../../../../core/colors.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height*0.09,
      width: size.width,
      color: white,
      child: Row(
        children: [
          Container(
            height: size.height * 0.052,
            width: size.width * 0.8,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25.0),
              border: Border.all(color: grey),
              color: Colors.white, 
            ),
            margin: const EdgeInsets.all(16.0),
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: const Row(
              children: [
                Icon(Icons.search, color: primaryy),
                SizedBox(width: 8.0),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Search by product',
                      hintStyle: TextStyle(color: Colors.grey),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const CircleAvatar(
            backgroundColor: primary,
            radius: 16,
            child: Icon(
              Icons.keyboard_voice_outlined,
              color: white,
              size: 28,
            ),
          )
        ],
      ),
    );
  }
}
