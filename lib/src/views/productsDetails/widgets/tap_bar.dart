// import 'package:flutter/material.dart';
// import 'package:platform_myhrakii/core/colors.dart';
// class TapbarWidget extends StatelessWidget {
//   const TapbarWidget({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return   const DefaultTabController(
//       length: 3,
//       child:   Column(
//         children: [
//            TabBar(
//             labelColor: primary,
//             indicatorColor: primary,
//             unselectedLabelColor: primary,
//             labelStyle: TextStyle(fontWeight: FontWeight.w500,fontSize: 12),
//             tabs: [
//               Tab(text: 'DESCRIPTION'),
//               Tab(text: 'SPECIFICATIONS'),
//               Tab(text: 'REVIEWS'),
//             ],),

//         // TabBarView(children: [
//         //    Container(
//         //         color: primary,
//         //         child: Text('asaghsghcgh'),
//         //       ),
//         //        Container(
//         //         color: primary,
//         //         child: Text('asaghsghcgh'),
//         //       ),
//         //        Container(
//         //         color: primary,
//         //         child: Text('asaghsghcgh'),
//         //       ),
//         // ])

//         ],
//       ),
//     );
//   }
// }

// ignore_for_file: non_constant_identifier_names
import 'package:flutter/material.dart';
import '../../../../core/colors.dart';

DefaultTabController TabBarWidget() {
  return const DefaultTabController(
    length: 3,
    child: Column(
      children: [
        TabBar(
          labelColor: primary,
          indicatorColor: primary,
          unselectedLabelColor: primary,
          labelStyle: TextStyle(fontWeight: FontWeight.w500, fontSize: 12),
          tabs: [
            Tab(text: 'DESCRIPTION'),
            Tab(text: 'SPECIFICATIONS'),
            Tab(text: 'REVIEWS'),
          ],
        ),
      ],
    ),
  );
}
