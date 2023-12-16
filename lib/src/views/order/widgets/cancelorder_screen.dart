// // ignore_for_file: sized_box_for_whitespace
// import 'package:flutter/material.dart';
// import '../../../../core/colors.dart';

// class CancelOrderScreen extends StatelessWidget {
//   const CancelOrderScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     var size = MediaQuery.of(context).size;
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Cancel Order',
//             style: TextStyle(fontWeight: FontWeight.w600)),
//       ),
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: EdgeInsets.only(
//               top: size.height * 0.03,
//               left: size.width * 0.03,
//               right: size.width * 0.03),
//           child:
//               Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
//             const Text('ORDERED ON 28 Aug 2023', style: TextStyle(color: dark)),
//             const Text('ORDERED# 403-8896183-3096341',
//                 style: TextStyle(fontWeight: FontWeight.w600)),
//             SizedBox(height: size.height * 0.02),
//             Container(
//               height: size.height * 0.14,
//               width: size.width,
//               // color: green,
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   const Text('Delivered on: 30 Aug 2023',
//                       style: TextStyle(
//                         fontWeight: FontWeight.w600,
//                         color: Colors.green,
//                       )),
//                   SizedBox(height: size.height * 0.01),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     children: [
//                       Image.asset(
//                         'assets/images/jhutti.jpg',
//                         width: size.width * 0.23,
//                         height: size.height * 0.1,
//                       ),
//                       Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           const Text('Rajasthani Jhuttis'),
//                           const Text('Size 3'),
//                           SizedBox(height: size.height * 0.02),
//                           const Text(
//                             'Return window closes on 8 Sep. 2023',
//                             style: TextStyle(color: grey),
//                           ),
//                         ],
//                       )
//                     ],
//                   )
//                 ],
//               ),
//             ),
//             SizedBox(height: size.height * 0.03),
//             const Divider(),
//             SizedBox(height: size.height * 0.02),
//             const Text('Cancellation reason',
//                 style: TextStyle(fontWeight: FontWeight.w500, fontSize: 19)),
//             SizedBox(height: size.height * 0.04),
//             Container(
//               height: size.height * 0.06,
//               width: size.width,
//               decoration: BoxDecoration(
//                   border: Border.all(color: grey),
//                   borderRadius: BorderRadius.circular(15)),
//               child: const Padding(
//                 padding: EdgeInsets.all(8.0),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Text(
//                       'Product damaged but shipping OK',
//                       style: TextStyle(color: grey),
//                     ),
//                     Icon(
//                       Icons.keyboard_arrow_down_outlined,
//                       size: 30,
//                     )
//                   ],
//                 ),
//               ),
//             ),
//             SizedBox(height: size.height * 0.06),
//             Center(
//               child: Container(
//                 height: size.height * 0.05,
//                 width: size.width * 0.54,
//                 decoration: BoxDecoration(
//                     gradient: const LinearGradient(colors: [
//                       primary,
//                       primaryy,
//                     ], begin: Alignment.topLeft, end: Alignment.bottomRight),
//                     borderRadius: BorderRadius.circular(10)),
//                 child: const Center(
//                     child: Text('Confirm cancel item',
//                         style: TextStyle(
//                             color: white, fontWeight: FontWeight.w700))),
//               ),
//             ),
//           ]),
//         ),
//       ),
//     );
//   }
// }

// ignore_for_file: sized_box_for_whitespace, unnecessary_const, sort_child_properties_last
import 'package:flutter/material.dart';
import '../../../../core/colors.dart';

class CancelOrderScreen extends StatelessWidget {
  const CancelOrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cancel Order',
            style: TextStyle(fontWeight: FontWeight.w600)),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            top: size.height * 0.03,
            left: size.width * 0.03,
            right: size.width * 0.03,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('ORDERED ON 28 Aug 2023',
                  style: TextStyle(color: dark)),
              const Text('ORDERED# 403-8896183-3096341',
                  style: TextStyle(fontWeight: FontWeight.w600)),
              SizedBox(height: size.height * 0.02),
              Container(
                height: size.height * 0.14,
                width: size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Delivered on: 30 Aug 2023',
                        style: TextStyle(
                            fontWeight: FontWeight.w600, color: Colors.green)),
                    SizedBox(height: size.height * 0.01),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset(
                          'assets/images/jhutti.jpg',
                          width: size.width * 0.23,
                          height: size.height * 0.1,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text('Rajasthani Jhuttis'),
                            const Text('Size 3'),
                            SizedBox(height: size.height * 0.02),
                            const Text(
                              'Return window closes on 8 Sep. 2023',
                              style: TextStyle(color: grey),
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: size.height * 0.03),
              const Divider(),
              SizedBox(height: size.height * 0.02),
              const Text('Cancellation reason',
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 19)),
              SizedBox(height: size.height * 0.04),
              Container(
                height: size.height * 0.06,
                width: size.width,
                decoration: BoxDecoration(
                  border: Border.all(color: grey),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: DropdownButton<String>(
                          icon: const Icon(Icons.keyboard_arrow_down_outlined),
                          items:const [
                            DropdownMenuItem<String>(
                              child:  Text(
                                'Product damaged but shipping OK',
                                style: TextStyle(color: grey),
                              ),
                              value: 'Product damaged but shipping OK',
                            ),
                             DropdownMenuItem<String>(
                              child: Text(
                                'Order created by mistake',
                                style: TextStyle(color: grey),
                              ),
                              value: 'Order created by mistake',
                            ),
                             DropdownMenuItem<String>(
                              child: Text(
                                'Item price too high',
                                style: TextStyle(color: grey),
                              ),
                              value: 'Item price too high',
                            ),
                            const DropdownMenuItem<String>(
                              child: Text(
                                'Wrong item was sent',
                                style: TextStyle(color: grey),
                              ),
                              value: 'Wrong item was sent',
                            ),
                          ],
                          onChanged: (value) {},
                          underline: Container(),
                          isExpanded: true,
                          hint: const Text('Select reason',
                              style: TextStyle(color: grey)),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: size.height * 0.06),
              Center(
                child: Container(
                  height: size.height * 0.05,
                  width: size.width * 0.54,
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(colors: [
                      primary,
                      primaryy,
                    ], begin: Alignment.topLeft, end: Alignment.bottomRight),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Center(
                    child: Text('Confirm cancel item',
                        style: TextStyle(
                            color: white, fontWeight: FontWeight.w700)),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
