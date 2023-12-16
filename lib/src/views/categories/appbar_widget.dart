 // ignore_for_file: non_constant_identifier_names
 import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/colors.dart';
import '../cart/cart_screen.dart';
import '../wishlist/favorite_scree.dart';

AppBar AppbarWidget(Size size, BuildContext context) {
    return AppBar(
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
    );
  }