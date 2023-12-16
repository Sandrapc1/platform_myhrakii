// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';
import '../../../../core/colors.dart';
import 'package:get/get.dart';

class PopularIdeasController extends GetxController {
  final RxInt currentIndex = 0.obs;
}

class PopularIdeasScreen extends StatelessWidget {
  final PopularIdeasController popularIdeasController =
      Get.put(PopularIdeasController());

  PopularIdeasScreen({
    super.key,
    required this.size,
  });

  final Size size;
  List<Map<String, String>> popularItems = [
    {'popularImage': 'assets/images/jutiwomen.jpg', 'populatText': 'Footwear'},
    {'popularImage': 'assets/images/womenbag.jpg', 'populatText': 'Bags'}
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.height * 0.25,
      width: size.width,
      child: ListView.builder(
        itemCount: 2,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: size.height * 0.2,
                  width: size.width * 0.54,
                  decoration: BoxDecoration(
                      color: viewall, borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    children: [
                      SizedBox(height: size.height * 0.01),
                      Container(
                        height: size.height * 0.13,
                        width: size.width * 0.5,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                image: AssetImage(
                                    popularItems[index]['popularImage']!),
                                fit: BoxFit.cover)),
                      ),
                      Text(
                        popularItems[index]['populatText']!,
                        style: const TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 16),
                      ),
                      const Text(
                        'Gifted By 50 people',
                        style:
                            TextStyle(color: grey, fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
