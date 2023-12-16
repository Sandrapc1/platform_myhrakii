// ignore_for_file: sized_box_for_whitespace
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:platform_myhrakii/src/views/bottamnavigation/bottamnavigation.dart';
import 'package:platform_myhrakii/src/views/drawer/drawer.dart';
import 'package:platform_myhrakii/src/views/home/widgets/popularides_screen.dart';
import 'package:platform_myhrakii/src/views/home/widgets/search_bar.dart';
import '../../../core/colors.dart';
import '../cart/cart_screen.dart';
import '../wishlist/favorite_scree.dart';
import '../home/widgets/shopbycategory_screen.dart';
import 'widgets/flat_offer_widget.dart';
import 'widgets/upto_offer.dart';

class OffersScreen extends StatelessWidget {
  const OffersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      drawer: const DrawerBar(),
      backgroundColor: white,
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
      body: SingleChildScrollView(
          child: Column(children: [
        SearchBarWidget(size: size),
        SizedBox(height: size.height * 0.01),
        Row(
          children: [
            TextButton(
                onPressed: () {
                  Get.to(const BottomNavigationBarWidget());
                },
                child: Row(
                  children: [
                    const Icon(
                      Icons.arrow_back,
                      color: dark,
                    ),
                    SizedBox(width: size.width * 0.01),
                    const Text(
                      'HOME',
                      style: TextStyle(color: grey, fontSize: 17),
                    ),
                  ],
                )),
            SizedBox(width: size.width * 0.01),
            const Text('|', style: TextStyle(color: grey, fontSize: 17)),
            SizedBox(width: size.width * 0.01),
            const Text('OFFERS',
                style: TextStyle(color: Colors.black, fontSize: 17))
          ],
        ),
        SizedBox(height: size.height * 0.02),
        OfferWidget(size),
        SizedBox(height: size.height * 0.02),
        offersWiget(size),
        SizedBox(height: size.height * 0.04),
        const Text(
          'BEST STEALS TO GRAB',
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 22),
        ),
        SizedBox(height: size.height * 0.02),
        PopularIdeasScreen(size: size),
        SizedBox(height: size.height * 0.02),
        Container(
          height: size.height * 0.003,
          width: size.width * 0.3,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            gradient: const LinearGradient(
              colors: [primary, grey, grey, grey, grey],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ),
            color: primary,
          ),
        ),
        SizedBox(height: size.height * 0.02),
        TextButton(
          onPressed: () {},
          child: const Text(
            'VIEW ALL',
            style: TextStyle(
              color: primary,
              fontSize: 16,
              fontWeight: FontWeight.w600,
              decoration: TextDecoration.underline,
              decorationColor: primaryy,
              decorationThickness: 1,
            ),
          ),
        ),
        SizedBox(height: size.height * 0.01),
        const Text(
          'HOTTEST DEAL ZONE',
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 22),
        ),
        SizedBox(height: size.height * 0.01),
        SizedBox(
      height: size.height * 0.09,
      width: size.width,
      child: ListView.builder(
        itemCount: 3,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
            height: size.height * 0.07,
            width: size.width * 0.4,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              gradient: const LinearGradient(
                colors: [
                  primary,
                  primaryy,
                ],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ),
              color: primary,
            ),
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child:   Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Products under',
                    style: TextStyle(fontWeight: FontWeight.w500, color: white),
                  ),
                  Text('2000',
                      style: TextStyle(fontWeight: FontWeight.w500, color: white)),
                ],
              ),
            ),
                    ),
          );
        },
      ),
    ),
    SizedBox(height: size.height * 0.02),
        Container(
          height: size.height * 0.003,
          width: size.width * 0.3,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            gradient: const LinearGradient(
              colors: [primary, grey, grey, grey, grey],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ),
            color: primary,
          ),
        ),  
        SizedBox(height: size.height * 0.03),
        OfferWidget(size),
         SizedBox(height: size.height * 0.02),
         offersWiget(size),
          SizedBox(height: size.height * 0.03),
        const Text(
          'SHOP BY CATEGORY',
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 22),
        ),
        SizedBox(height: size.height * 0.03),
        ShopByCategoryWidget(size: size),
        SizedBox(height: size.height * 0.03),
        const Text(
          'LOAD MORE',
          style: TextStyle(
            fontSize: 17,
            color: primary,
            fontWeight: FontWeight.w600,
            decoration: TextDecoration.underline,
            decorationColor: primaryy,
            decorationThickness: 1,
          ),
        ),
        SizedBox(height: size.height * 0.03),
      ])),
    );
  }
  
}
