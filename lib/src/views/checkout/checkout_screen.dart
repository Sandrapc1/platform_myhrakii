// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:platform_myhrakii/src/views/address/address_scree.dart';
import 'package:platform_myhrakii/src/views/cart/cart_screen.dart';
import 'package:platform_myhrakii/src/views/drawer/drawer.dart';
import 'package:platform_myhrakii/src/views/order/myorder_screen.dart';
import '../../../core/colors.dart';
import '../wishlist/favorite_scree.dart';
import 'widgets/search_bar.dart';

class CheckoutScreen extends StatelessWidget {
  CheckoutScreen({super.key});

  String selectedAddress = 'address1';
  void onSelectAddress(String value) {
    selectedAddress = value;
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: white,
      drawer: const DrawerBar(),
      appBar: AppBar(
        backgroundColor: white,
        title: Padding(
          padding: EdgeInsets.only(left: size.width * 0.001),
          child: Image.asset('assets/images/Myhraki_Logo.png',
              height: size.height * 0.036),
        ),
        iconTheme: const IconThemeData(color: primary),
        actions: [
          Stack(
            children: [
              IconButton(
                onPressed: () {
                  Get.to(const AddtoCartScreen());
                },
                icon: const Icon(
                  Icons.shopping_cart_outlined,
                  size: 28,
                  color: primary,
                ),
              ),
              Positioned(
                right: 6,
                bottom: 17,
                child: Container(
                    height: size.height * 0.045,
                    width: size.width * 0.045,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: LinearGradient(
                            colors: [primary, primaryy],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight)),
                    child: const Center(
                        child: Text(
                      '3',
                      style: TextStyle(color: white),
                    ))),
              ),
            ],
          ),
          IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>  FavoriteScreen(),
                  ));
            },
            icon: const Icon(
              Icons.favorite_border_rounded,
              size: 28,
              color: primary,
            ),
          ),
          IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>  FavoriteScreen(),
                  ));
            },
            icon: const Icon(
              Icons.notifications_none_rounded,
              size: 28,
              color: primary,
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: size.height * 0.07,
        width: size.width*0.04,
        color: white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                Get.to(OrderScreen());
              },
              child: Container(
                height: size.height * 0.05,
                width: size.width * 0.4,
                decoration: BoxDecoration(
                    gradient: const LinearGradient(colors: [
                      primary,
                      primaryy,
                    ], begin: Alignment.topLeft, end: Alignment.bottomRight),
                    borderRadius: BorderRadius.circular(10)),
                child: const Center(
                    child: Text('PLACE YOUR ORDER',
                        style: TextStyle(
                            color: white, fontWeight: FontWeight.w700))),
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
              left: size.width * 0.03, right: size.width * 0.03),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SearchScreenWidget(size: size),
              SizedBox(height: size.height * 0.04),
              const Text(
                'Checkout',
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 25),
              ),
              SizedBox(height: size.height * 0.03),
              Container(
                height: size.height * 0.3,
                width: size.width,
                // color: great,
                decoration: BoxDecoration(
                    border: Border.all(color: grey),
                    borderRadius: BorderRadius.circular(13)),
                child: Padding(
                  padding: EdgeInsets.only(
                      left: size.width * 0.03, top: size.height * 0.04),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'DELIVERY ADDRESS',
                        style: TextStyle(
                            color: primary,
                            fontWeight: FontWeight.w500,
                            fontSize: 17),
                      ),
                      ListTile(
                        title: const Text('Address 1'),
                        leading: Radio(
                            activeColor: primary,
                            value: 'address1',
                            groupValue: selectedAddress,
                            onChanged: (value) {
                              onSelectAddress(value as String);
                            }),
                      ),
                      ListTile(
                        title: const Text('Address 2'),
                        leading: Radio(
                            activeColor: primary,
                            value: 'address2',
                            groupValue: selectedAddress,
                            onChanged: (value) {
                              onSelectAddress(value as String);
                            }),
                      ),
                      SizedBox(height: size.height * 0.02),
                      InkWell(
                        onTap: () {
                          //
                          Get.to(const AddAddressScreen());
                        },
                        child: const Row(
                          children: [
                            Icon(
                              Icons.add,
                              size: 29,
                            ),
                            Text('Add Address')
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: size.height * 0.02),
              Container(
                height: size.height * 0.3,
                width: size.width,
                decoration: BoxDecoration(
                    border: Border.all(color: grey),
                    borderRadius: BorderRadius.circular(13)),
                child: Padding(
                  padding: EdgeInsets.only(
                      left: size.width * 0.03,
                      top: size.height * 0.04,
                      right: size.width * 0.03),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Payment Details',
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 20),
                      ),
                      SizedBox(height: size.height * 0.02),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Subtotal(4 items)',
                            style: TextStyle(
                                fontWeight: FontWeight.w400, fontSize: 16),
                          ),
                          Text('₹3600',
                              style: TextStyle(
                                  fontWeight: FontWeight.w400, fontSize: 16))
                        ],
                      ),
                      SizedBox(height: size.height * 0.01),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Discount',
                            style: TextStyle(
                                fontWeight: FontWeight.w400, fontSize: 16),
                          ),
                          Text('₹199',
                              style: TextStyle(
                                  fontWeight: FontWeight.w400, fontSize: 16))
                        ],
                      ),
                      SizedBox(height: size.height * 0.01),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Coupon Discount',
                            style: TextStyle(
                                fontWeight: FontWeight.w400, fontSize: 16),
                          ),
                          Text('₹100',
                              style: TextStyle(
                                  fontWeight: FontWeight.w400, fontSize: 16))
                        ],
                      ),
                      SizedBox(height: size.height * 0.01),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Shipping',
                            style: TextStyle(
                                fontWeight: FontWeight.w400, fontSize: 16),
                          ),
                          Text('₹50',
                              style: TextStyle(
                                  fontWeight: FontWeight.w400, fontSize: 16))
                        ],
                      ),
                      SizedBox(height: size.height * 0.02),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'To Pay',
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 19),
                          ),
                          Text('₹3401',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 19))
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // void _navigateToAddAddressScreen(BuildContext context) {
  //   Navigator.push(
  //     context,
  //     MaterialPageRoute(
  //       builder: (context) => AddAddressScreen(),
  //     ),
  //   );
  // }


// Future<void> _showAddAddressDialog(context) async {
//   return showDialog<void>(
//     context: context,
//     builder: (BuildContext context) {
//       return Container(
//         height:500 ,
//         width: 300,
//         decoration: BoxDecoration(

//           border: Border.all(color: grey)
//         ),
//         // constraints: const BoxConstraints(
//         //   maxWidth: 280.0, // Set your desired maximum width
//         // ),
//         child: AlertDialog(
//           title: const Text('Add Address'),
//           contentPadding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 20.0),
//           content: Column(
//             mainAxisSize: MainAxisSize.min,
//             children: <Widget>[
//               _buildTextField('Name', keyboardType: TextInputType.name),
//               const SizedBox(height: 16),
//               _buildTextField('Mobile Number', keyboardType: TextInputType.phone),
//                const SizedBox(height: 16),
//               _buildTextField('Address', keyboardType: TextInputType.streetAddress),
//               const SizedBox(height: 16),
//               _buildTextField('City', keyboardType: TextInputType.text),
//               const SizedBox(height: 16),
//               _buildTextField('Pincode', keyboardType: TextInputType.number),
//               const SizedBox(height: 16),
//               _buildTextField('Location', keyboardType: TextInputType.text),
//                const SizedBox(height: 16),
//               _buildTextField('State', keyboardType: TextInputType.text),
//             ],
//           ),
//           actions: <Widget>[
//             TextButton(
//               onPressed: () {
//                 Navigator.of(context).pop();
//               },
//               child: const Text('Cancel'),
//             ),
//             TextButton(
//               onPressed: () {
//                 Navigator.of(context).pop();
//               },
//               child: const Text('Add'),
//             ),
//           ],
//         ),
//       );
//     },
//   );
// }

// Widget _buildTextField(String labelText, {required TextInputType keyboardType}) {
//   return TextField(
//     decoration: InputDecoration(labelText: labelText),
//     keyboardType: keyboardType,
//   );
// }




//   Future<void> _showAddAddressDialog(context) async {
//   return showDialog<void>(
//     context: context,
//     builder: (BuildContext context) {
//       return AlertDialog(
//         title: const Text('Add Address'),
//         contentPadding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 20.0),
//         content: Column(
//           mainAxisSize: MainAxisSize.min,
//           children: <Widget>[
//             _buildTextField('Name', keyboardType: TextInputType.name),
//             const SizedBox(height: 16),
//             _buildTextField('Mobile Number', keyboardType: TextInputType.phone),
//             const SizedBox(height: 16),
//             _buildTextField('City', keyboardType: TextInputType.streetAddress),
//             const SizedBox(height: 16),
//             _buildTextField('Pincode', keyboardType: TextInputType.number),
//             const SizedBox(height: 16),
//             _buildTextField('Location / Town', keyboardType: TextInputType.text),
//              const SizedBox(height: 16),
//             _buildTextField('State', keyboardType: TextInputType.text),
//           ],
//         ),
//         actions: <Widget>[
//           TextButton(
//             onPressed: () {
//               Navigator.of(context).pop();
//             },
//             child: const Text('Cancel'),
//           ),
//           TextButton(
//             onPressed: () {
//               Navigator.of(context).pop();
//             },
//             child: const Text('Add'),
//           ),
//         ],
//         contentConstraints: const BoxConstraints(
//           minWidth: 280.0, 
//           minHeight: 300.0,
//         ),
//       );
//     },
//   );


// }
// Widget _buildTextField(String labelText, {required TextInputType keyboardType}) {
//   return TextField(
//     decoration: InputDecoration(labelText: labelText),
//     keyboardType: keyboardType,
//   );
// }











// Future<void> _showAddAddressDialog(context) async {
//     await showDialog<void>(
//       context: context,
//       builder: (BuildContext context) {
//         return Container(
//           height: 500,
//           width: 300,
//           decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
//           child: AlertDialog(
//             title: const Text('Add Address'),
//             contentPadding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 20.0),
//             content: Column(
//               mainAxisSize: MainAxisSize.min,
//               children: <Widget>[
//                 _buildTextField('Name', keyboardType: TextInputType.name),
//                 const SizedBox(height: 16),
//                 _buildTextField('Mobile Number', keyboardType: TextInputType.phone),
//                 const SizedBox(height: 16),
//                 _buildTextField('Address', keyboardType: TextInputType.streetAddress),
//                 const SizedBox(height: 16),
//                 _buildTextField('City', keyboardType: TextInputType.text),
//                 const SizedBox(height: 16),
//                 _buildTextField('Pincode', keyboardType: TextInputType.number),
//                 const SizedBox(height: 16),
//                 _buildTextField('Location', keyboardType: TextInputType.text),
//                 const SizedBox(height: 16),
//                 _buildTextField('State', keyboardType: TextInputType.text),
//               ],
//             ),
//             actions: <Widget>[
//               TextButton(
//                 onPressed: () {
//                   Navigator.of(context).pop();
//                 },
//                 child: const Text('Cancel'),
//               ),
//               TextButton(
//                 onPressed: () {
//                   // You can add your logic here for handling the "Add" button press
//                   Navigator.of(context).pop();
//                 },
//                 child: const Text('Add'),
//               ),
//             ],
//           ),
//         );
//       },
//     );
//   }

//   Widget _buildTextField(String labelText, {required TextInputType keyboardType}) {
//     return TextField(
//       decoration: InputDecoration(labelText: labelText),
//       keyboardType: keyboardType,
//     );
//   }

 
}
