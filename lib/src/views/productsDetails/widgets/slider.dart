// // ignore_for_file: library_private_types_in_public_api

// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:flutter/material.dart';
// import 'package:platform_myhrakii/core/colors.dart';

// class ProductSlider extends StatefulWidget {
//   const ProductSlider({Key? key}) : super(key: key);

//   @override
//   _ProductSliderState createState() => _ProductSliderState();
// }

// class _ProductSliderState extends State<ProductSlider> {
//   int _currentIndex = 0;
//   List<String> carouselImage = [
//     'assets/images/jootiewomen.jpg',
//     'assets/images/jootiewomen.jpg',
//     'assets/images/jootiewomen.jpg',
//     'assets/images/jootiewomen.jpg',

//   ];

//   @override
//   Widget build(BuildContext context) {
//     var size = MediaQuery.of(context).size;
//     return Column(
//       children: [
//         Container(
//           color: green,
//           height: size.height * 0.3,
//           // height: 150.0,
//           // width: 400,
//           // width: size.width*0.99,
//           child: CarouselSlider(
//             items: carouselImage.map((carouselImage) {
//               return _buildCarouselItem(carouselImage);
//             }).toList(),
//             options: CarouselOptions(
//               height: size.height*0.3,
//               enlargeCenterPage: true,
//               autoPlay: false,
//               autoPlayInterval: const Duration(seconds: 2),
//               autoPlayAnimationDuration: const Duration(milliseconds: 800),
//               autoPlayCurve: Curves.fastOutSlowIn,
//               pauseAutoPlayOnTouch: true,
//               aspectRatio: 2.0,
//               onPageChanged: (index, reason) {
//                 setState(() {
//                   _currentIndex = index;
//                 });
//               },
//             ),
//           ),
//         ),
//        SizedBox(height: size.height*0.02),
//         _buildSelector(),
//       ],
//     );
//   }

//   Widget _buildCarouselItem(String carouselImage) {
//     var size = MediaQuery.of(context).size;
//     return Container(
//     height: size.height * 0.3,
//     width: size.width,
//       decoration: BoxDecoration(
//         // borderRadius: BorderRadius.circular(20.0),
//         image: DecorationImage(
//           image: AssetImage(carouselImage),
//           fit: BoxFit.cover,
//         ),
//       ),
//     );
//   }

//   Widget _buildSelector() {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: List.generate(
//         carouselImage.length,
//         (index) => Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Container(
//             width: 10.0,
//             height: 10.0,
//             decoration: BoxDecoration(
//               shape: BoxShape.circle,
//               color: _currentIndex == index ? primary : grey,
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// ignore_for_file: library_private_types_in_public_api, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:platform_myhrakii/core/colors.dart';

class ProductSlider extends StatefulWidget {
  const ProductSlider({Key? key}) : super(key: key);

  @override
  _ProductSliderState createState() => _ProductSliderState();
}

class _ProductSliderState extends State<ProductSlider> {
  int _currentIndex = 0;
  final PageController _pageController = PageController(initialPage: 0);

  List<String> carouselImage = [
    'assets/images/jootiewomen.jpg',
    'assets/images/jootiewomen.jpg',
    'assets/images/jootiewomen.jpg',
    'assets/images/jootiewomen.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          // color: green,
          height: size.height * 0.4,
          child: Stack(
            alignment: Alignment.center,
            children: [
              PageView.builder(
                controller: _pageController,
                itemCount: carouselImage.length,
                onPageChanged: (index) {
                  setState(() {
                    _currentIndex = index;
                  });
                },
                itemBuilder: (context, index) {
                  return _buildCarouselItem(carouselImage[index]);
                },
              ),
              Positioned(
                left: 10,
                child: Container(
                  height: size.height * 0.07,
                  width: size.width * 0.07,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: grey,
                  ),
                  child: IconButton(
                    icon: const Icon(
                      Icons.arrow_back_ios,
                      color: white,
                      size: 19,
                    ),
                    onPressed: () {
                      _prevPage();
                    },
                  ),
                ),
              ),
              Positioned(
                right: 9,
                child: Container(
                  height: size.height * 0.07,
                  width: size.width * 0.07,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: grey,
                  ),
                  child: IconButton(
                    icon: const Icon(Icons.arrow_forward_ios,
                        color: white, size: 19),
                    onPressed: () {
                      _nextPage();
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: size.height * 0.01),
        _buildSelector(),
      ],
    );
  }

  void _prevPage() {
    if (_currentIndex > 0) {
      _pageController.animateToPage(_currentIndex - 1,
          duration: const Duration(milliseconds: 500), curve: Curves.easeInOut);
    } else {
      _pageController.animateToPage(carouselImage.length - 1,
          duration: const Duration(milliseconds: 500), curve: Curves.easeInOut);
    }
  }

  void _nextPage() {
    if (_currentIndex < carouselImage.length - 1) {
      _pageController.animateToPage(_currentIndex + 1,
          duration: const Duration(milliseconds: 500), curve: Curves.easeInOut);
    } else {
      _pageController.animateToPage(0,
          duration: const Duration(milliseconds: 500), curve: Curves.easeInOut);
    }
  }

  Widget _buildCarouselItem(String carouselImage) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.3,
      width: size.width,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(carouselImage),
          fit: BoxFit.cover,
        ),
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
