// ignore_for_file: sized_box_for_whitespace
import 'package:flick_video_player/flick_video_player.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:platform_myhrakii/src/views/drawer/drawer.dart';
import 'package:video_player/video_player.dart';
import '../../../core/colors.dart';
import '../cart/cart_screen.dart';
import '../home/widgets/search_bar.dart';
import 'widgets/appbar_screen.dart';
import 'widgets/productdetails_body_screen.dart';

final FlickManager flickManager = FlickManager(
    videoPlayerController: VideoPlayerController.networkUrl(
        Uri.parse('https://youtu.be/JJG5I5BMR6c?si=d8O-woGOCcix-ZUu')));

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    // final VideoController controller = Get.put(VideoController());
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: white,
      drawer: const DrawerBar(),
      appBar: AppBarWidegetsInProductScreen(size, context),
      bottomNavigationBar: Container(
        height: size.height * 0.06,
              width: size.width,
              color: white,
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: size.height * 0.05,
                width: size.width * 0.3,
                // color: green,
                decoration: BoxDecoration(
                    border: Border.all(color: primary),
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.remove,
                          color: primary,
                        )),
                    const Text(
                      '1',
                      style: TextStyle(color: primary, fontSize: 18),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.add,
                          color: primary,
                        ))
                  ],
                ),
              ),
              SizedBox(width: size.width * 0.05),
              InkWell(
                onTap: () {
                  Get.to(const AddtoCartScreen());
                },
                child: Container(
                  height: size.height * 0.05,
                  width: size.width * 0.54,
                  decoration: BoxDecoration(
                      gradient: const LinearGradient(colors: [
                        primary,
                        primaryy,
                      ], begin: Alignment.topLeft, end: Alignment.bottomRight),
                      borderRadius: BorderRadius.circular(10)),
                  child: const Center(
                      child: Text('ADD TO CART',
                          style: TextStyle(
                              color: white, fontWeight: FontWeight.w700))),
                ),
              ),
            ],
          ),
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ProductDetailsBodyWidget(size: size),
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: SearchBarWidget(size: size),
          ),
        ],
      ),
    );
  }
}
