// ignore_for_file: library_private_types_in_public_api

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:platform_myhrakii/core/colors.dart';
import 'package:platform_myhrakii/src/views/listing/listing_screen.dart';

class CarouselSliderDemo extends StatefulWidget {
  const CarouselSliderDemo({Key? key}) : super(key: key);

  @override
  _CarouselSliderDemoState createState() => _CarouselSliderDemoState();
}

class _CarouselSliderDemoState extends State<CarouselSliderDemo> {
  int _currentIndex = 0;
  List<String> carouselImage = [
    'assets/images/header-6.png',
    'assets/images/silder.jpg',
    'assets/images/sider2.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(
      children: [
        SizedBox(
          height: size.height * 0.18,
          // height: 150.0,
          // width: 400,
          width: size.width * 0.95,
          child: CarouselSlider(
            items: carouselImage.map((carouselImage) {
              return _buildCarouselItem(carouselImage);
            }).toList(),
            options: CarouselOptions(
              height: 200.0,
              enlargeCenterPage: true,
              autoPlay: false,
              autoPlayInterval: const Duration(seconds: 2),
              autoPlayAnimationDuration: const Duration(milliseconds: 800),
              autoPlayCurve: Curves.fastOutSlowIn,
              pauseAutoPlayOnTouch: true,
              aspectRatio: 2.0,
              onPageChanged: (index, reason) {
                setState(() {
                  _currentIndex = index;
                });
              },
            ),
          ),
        ),
        const SizedBox(height: 10.0),
        _buildSelector(),
      ],
    );
  }

  Widget _buildCarouselItem(String carouselImage) {
    var size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        image: DecorationImage(
          image: AssetImage(carouselImage),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(
            Colors.black.withOpacity(0.5),
            BlendMode.srcOver,
            // BlendMode.colorBurn
            //  BlendMode.darken
             
          ),
        ),
      ),
      child: Stack(
        children: [
          const Positioned(
            top: 30.0,
            left: 20.0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'UP TO',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.0,
                      fontWeight: FontWeight.w300),
                ),
                Text(
                  '50% OFF',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 21.0,
                      fontWeight: FontWeight.w500),
                ),
                Text(
                  'Join hands in supporting 500 artisans',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 14.0,
                      fontWeight: FontWeight.w300),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 10.0,
            left: 20.0,
            child: Container(
              height: size.height * 0.038,
              width: size.width * 0.3,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.white)),
              child: InkWell(
                onTap: () async { Get.to(ListingScreen());},
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'SHOP NOW',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(width: size.width * 0.01),
                      const Icon(
                        Icons.arrow_circle_right_outlined,
                        color: Colors.white,
                        size: 19,
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSelector() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        carouselImage.length,
        (index) => Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: 10.0,
            height: 10.0,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: _currentIndex == index ? primary : grey,
            ),
          ),
        ),
      ),
    );
  }
}
