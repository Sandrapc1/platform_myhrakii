// import 'package:flutter/material.dart';
// import 'package:platform_myhrakii/core/colors.dart';

// class AddAddressScreen extends StatelessWidget {
//   const AddAddressScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     var size = MediaQuery.of(context).size;
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text(' Add Address',
//             style: TextStyle(
//               fontWeight: FontWeight.w600,
//             )),
//       ),
//       body: SingleChildScrollView(
//           child: Padding(
//         padding: EdgeInsets.only(
//             left: size.width * 0.05,
//             top: size.height * 0.04,
//             right: size.width * 0.05),
//         child: Form(
//             child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             const Text(
//               'CONTACT DETAILS',
//               style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
//             ),
//             SizedBox(height: size.height * 0.02),
//             TextFormField(
//               decoration: const InputDecoration(
//                   border: OutlineInputBorder(
//                       borderRadius: BorderRadius.all(Radius.circular(15))),
//                   prefixIcon: Icon(Icons.person),
//                   hintText: ' Full Name'),
//             ),
//             SizedBox(
//               height: size.height * 0.02,
//             ),
//             TextFormField(
//               decoration: const InputDecoration(
//                   border: OutlineInputBorder(
//                       borderRadius: BorderRadius.all(Radius.circular(15))),
//                   prefixIcon: Icon(Icons.phone_android),
//                   hintText: ' Mobile Number'),
//               keyboardType: TextInputType.phone,
//               // maxLength: 10,
//             ),
//             SizedBox(
//               height: size.height * 0.02,
//             ),
//             const Text(
//               'ADDRESS DETAILS',
//               style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
//             ),
//             SizedBox(height: size.height * 0.02),
//             TextFormField(
//               decoration: const InputDecoration(
//                   border: OutlineInputBorder(
//                       borderRadius: BorderRadius.all(Radius.circular(15))),
//                   prefixIcon: Icon(Icons.house),
//                   hintText: 'House No. / Building Name'),
//               keyboardType: TextInputType.phone,
//               // maxLength: 10,
//             ),
//             SizedBox(height: size.height * 0.02),
//             TextFormField(
//               decoration: const InputDecoration(
//                   border: OutlineInputBorder(
//                       borderRadius: BorderRadius.all(Radius.circular(15))),
//                   prefixIcon: Icon(Icons.location_pin),
//                   hintText: 'Road Name / Building Name / Street'),
//               keyboardType: TextInputType.phone,
//               // maxLength: 10,
//             ),
//             SizedBox(
//               height: size.height * 0.02,
//             ),
//             Row(
//               children: [
//                 Expanded(
//                   child: TextFormField(
//                     decoration: const InputDecoration(
//                         border: OutlineInputBorder(
//                             borderRadius:
//                                 BorderRadius.all(Radius.circular(15))),
//                         prefixIcon: Icon(Icons.keyboard),
//                         hintText: 'Pin Code '),
//                     keyboardType: TextInputType.number,
//                     // maxLength: 6,
//                   ),
//                 ),
//                 SizedBox(
//                   width: size.width * 0.02,
//                 ),
//                 Expanded(
//                   child: TextFormField(
//                     decoration: const InputDecoration(
//                         border: OutlineInputBorder(
//                             borderRadius:
//                                 BorderRadius.all(Radius.circular(15))),
//                         prefixIcon: Icon(Icons.streetview_outlined),
//                         hintText: 'Street'),
//                   ),
//                 ),
//               ],
//             ),
//             SizedBox(height: size.height * 0.02),
//             Row(
//               children: [
//                 Expanded(
//                   child: TextFormField(
//                     decoration: const InputDecoration(
//                         border: OutlineInputBorder(
//                             borderRadius:
//                                 BorderRadius.all(Radius.circular(15))),
//                         prefixIcon: Icon(Icons.apartment),
//                         hintText: 'State '),
//                   ),
//                 ),
//                 SizedBox(
//                   width: size.width * 0.02,
//                 ),
//                 Expanded(
//                   child: TextFormField(
//                     decoration: const InputDecoration(
//                         border: OutlineInputBorder(
//                             borderRadius:
//                                 BorderRadius.all(Radius.circular(15))),
//                         prefixIcon: Icon(Icons.location_city),
//                         hintText: 'City '),
//                   ),
//                 ),
//               ],
//             ),
//             SizedBox(height: size.height * 0.02),
//                 Row(
//                   children: [
//                     Radio(
//                       activeColor: primary,
//                       value: 'Home',
//                       groupValue: 'selectedAddressType',
//                       onChanged: (value) {
                        
//                       },
//                     ),
//                     const Text('Home'),
//                     Radio(
//                       activeColor: primary,
//                       value: 'Work',
//                       groupValue: 'selectedAddressType',
//                       onChanged: (value) {
                        
//                       },
//                     ),
//                     const Text('Work'),
//                   ],
//                 ),
//               ],
//             ),
//           ),
        
//         )
//         ),
//       );
//   }
// }



// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:get/get.dart'; // Import GetX package
import 'package:platform_myhrakii/core/colors.dart';

class AddAddressScreen extends StatefulWidget {
  const AddAddressScreen({Key? key}) : super(key: key);

  @override
  _AddAddressScreenState createState() => _AddAddressScreenState();
}

class _AddAddressScreenState extends State<AddAddressScreen> {
  // Rx variables for managing state
  RxString selectedAddressType = 'Home'.obs;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          ' Add Address',
          style: TextStyle(
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
        bottomNavigationBar: Container(
        height: size.height * 0.14,
        width: size.width*0.1,
        color: white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                Get.back();
              },
              child: Container(
                height: size.height * 0.05,
                width: size.width * 0.5,
                decoration: BoxDecoration(
                  border: Border.all(color: dark),
                    // gradient: const LinearGradient(colors: [
                    //   primary,
                    //   primaryy,
                    // ], begin: Alignment.topLeft, end: Alignment.bottomRight),
                    borderRadius: BorderRadius.circular(10)),
                child: const Center(
                    child: Text('SAVE',
                        style: TextStyle(
                            color: dark, fontWeight: FontWeight.w700,fontSize: 17))),
              ),
            ),
          ],
        ),
      ),


      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            left: size.width * 0.05,
            top: size.height * 0.04,
            right: size.width * 0.05,
          ),
          child: Form(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'CONTACT DETAILS',
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
                ),
                SizedBox(height: size.height * 0.02),
                TextFormField(
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      prefixIcon: Icon(Icons.person),
                      hintText: ' Full Name'),
                ),
                SizedBox(
                  height: size.height * 0.02,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      prefixIcon: Icon(Icons.phone_android),
                      hintText: ' Mobile Number'),
                  keyboardType: TextInputType.phone,
                  // maxLength: 10,
                ),
                SizedBox(
                  height: size.height * 0.02,
                ),
                const Text(
                  'ADDRESS DETAILS',
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
                ),
                SizedBox(height: size.height * 0.02),
                TextFormField(
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      prefixIcon: Icon(Icons.house),
                      hintText: 'House No. / Building Name'),
                  keyboardType: TextInputType.phone,
                  // maxLength: 10,
                ),
                SizedBox(height: size.height * 0.02),
                TextFormField(
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      prefixIcon: Icon(Icons.location_pin),
                      hintText: 'Road Name / Building Name / Street'),
                  keyboardType: TextInputType.phone,
                  // maxLength: 10,
                ),
                SizedBox(
                  height: size.height * 0.02,
                ),
                Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15))),
                            prefixIcon: Icon(Icons.keyboard),
                            hintText: 'Pin Code '),
                        keyboardType: TextInputType.number,
                        // maxLength: 6,
                      ),
                    ),
                    SizedBox(
                      width: size.width * 0.02,
                    ),
                    Expanded(
                      child: TextFormField(
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15))),
                            prefixIcon: Icon(Icons.streetview_outlined),
                            hintText: 'Street'),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: size.height * 0.02),
                Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15))),
                            prefixIcon: Icon(Icons.apartment),
                            hintText: 'State '),
                      ),
                    ),
                    SizedBox(
                      width: size.width * 0.02,
                    ),
                    Expanded(
                      child: TextFormField(
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15))),
                            prefixIcon: Icon(Icons.location_city),
                            hintText: 'City '),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: size.height * 0.02),
                Row(
                  children: [
                    Radio(
                      activeColor: primary,
                      value: 'Home',
                      groupValue: selectedAddressType.value,
                      onChanged: (value) {
                        selectedAddressType.value = value!;
                      },
                    ),
                    const Text('Home'),
                    Radio(
                      activeColor: primary,
                      value: 'Work',
                      groupValue: selectedAddressType.value,
                      onChanged: (value) {
                        selectedAddressType.value = value!;
                      },
                    ),
                    const Text('Work'),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
