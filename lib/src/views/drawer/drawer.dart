// ignore_for_file: use_build_context_synchronously, non_constant_identifier_names, must_be_immutable
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:platform_myhrakii/src/views/address/address_scree.dart';
import 'package:platform_myhrakii/src/views/drawer/widgets/F&Q/fq_screen.dart';
import 'package:platform_myhrakii/src/views/drawer/widgets/contacts/contact_screen.dart';
import 'package:platform_myhrakii/src/views/order/myorder_screen.dart';
import 'package:platform_myhrakii/src/views/wishlist/favorite_scree.dart';
import 'package:platform_myhrakii/src/views/myprofile/profile_screen.dart';
import '../../../core/colors.dart';

class DrawerBar extends StatelessWidget {
  const DrawerBar({super.key});
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Drawer(
      // backgroundColor: white,
      // backgroundColor: const Color.fromARGB(255, 223, 220, 220),
      child: ListView(
        children: [
          DrawerHeader(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  'assets/images/Myhraki_Logo.png',
                  width: size.width * 0.37,
                  height: size.height * 0.2,
                ),
                // IconButton(onPressed: (){
                //   Navigator.pop(context);
                // }, icon: const Icon(Icons.close))
              ],
            ),
          ),
          Column(
            children: [
              ListTile(
                onTap: () {Get.to(const AccountScreen());},
                title: const Text(
                  'My Profile',
                  style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 19),
                ),
                leading: const Icon(
                  Icons.account_circle_outlined,
                  color: Colors.black,
                ),
              ),
             ListTile(
                onTap: () {Get.to(const AddAddressScreen());},
                title: const Text(
                  'My Address',
                  style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 19),
                ),
                leading: const Icon(
                  Icons.location_history_outlined,
                  color: Colors.black,
                ),
              ),
               ListTile(
                onTap: () {Get.to(const OrderScreen());},
                title: const Text(
                  'My Orders',
                  style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 19),
                ),
                leading: const Icon(
                  Icons.local_shipping_outlined,
                  color: Colors.black,
                ),
              ),
               ListTile(
                onTap: () {Get.to(const ContactsUsScreen());},
                title: const Text(
                  'Contact Us',
                  style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 19),
                ),
                leading: const Icon(
                  Icons.phone_in_talk_outlined,
                  color: Colors.black,
                ),
              ),
               ListTile(
                onTap: () {Get.to(FavoriteScreen());},
                title: const Text(
                  'My Wishlist',
                  style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 19),
                ),
                leading: const Icon(
                  Icons.favorite_border_rounded,
                  color: Colors.black,
                ),
              ),
               ListTile(
                onTap: () {Get.to(const FQScreen());},
                title: const Text(
                  'FAQ',
                  style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 19),
                ),
                leading: const Icon(
                  Icons.chat_bubble_outline,
                  color: Colors.black,
                ),
              ),
              InkWell(
                onTap: () {},
                child: ListTile(
                  onTap: () {
                    Get.defaultDialog(
                        title: 'Are you sure you want to ',
                        titleStyle: const TextStyle(fontSize: 15),
                        middleText: 'Exit?',
                        textCancel: 'Cancel',
                        cancelTextColor: Colors.black,
                        textConfirm: 'Confirm',
                        confirmTextColor: white,
                        backgroundColor: white,
                        onCancel: () {},
                        onConfirm: () {
                          exit(0);
                        },
                        buttonColor: Colors.red);
                  },
                  title: const Text('Exit', style: TextStyle(color: Colors.red,fontWeight: FontWeight.w500,fontSize: 19)),
                  leading: const Icon(
                    Icons.logout_sharp,
                    color: Colors.red,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
