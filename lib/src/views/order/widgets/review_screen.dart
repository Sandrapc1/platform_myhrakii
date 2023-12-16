import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:platform_myhrakii/core/colors.dart';

class ReviewScreen extends StatelessWidget {
  const ReviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title:
            const Text('Review', style: TextStyle(fontWeight: FontWeight.w600)),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
              top: size.height * 0.03,
              left: size.width * 0.03,
              right: size.width * 0.03),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Arriving on : 1 sept 2023',
                  style: TextStyle(fontWeight: FontWeight.w600)),
              SizedBox(height: size.height * 0.02),
              InkWell(
                // onTap: (){Get.to(ReviewScreen());},
                child: Container(
                  height: size.height * 0.09,
                  width: size.width,
                  // color: green,
                  child: Row(
                    children: [
                      Image.asset('assets/images/jhutti.jpg'),
                      SizedBox(width: size.width * 0.05),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Rajasthani Jhuttis'),
                          Text('Size 3'),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: size.height * 0.04),
              const Text(
                'RATINGS',
                style: TextStyle(color: primary, fontWeight: FontWeight.w600),
              ),
              SizedBox(height: size.height * 0.01),
              const Row(
                children: [
                  Icon(Icons.star, color: grey),
                  Icon(Icons.star, color: grey),
                  Icon(Icons.star, color: grey),
                  Icon(Icons.star, color: grey),
                  Icon(Icons.star, color: grey),
                ],
              ),
              SizedBox(height: size.height * 0.03),
              const Text(
                'ADD PHOTO / VIDEO',
                style: TextStyle(color: primary, fontWeight: FontWeight.w600),
              ),
                SizedBox(height: size.height * 0.01),
                const Text('Shoppers find images and videos more helpful than text alone.',style: TextStyle(color: grey)),
                SizedBox(height: size.height * 0.02),
                Image.asset('assets/images/Frame 52983957.png',height: size.height*0.16,),
                SizedBox(height: size.height * 0.03),
              const Text(
                'ADD A WRITTEN REVIEW',
                style: TextStyle(color: primary, fontWeight: FontWeight.w600),
              ),
                SizedBox(height: size.height * 0.02),
                Container(
                  height: size.height*0.15,
                  width: size.width,
                  decoration: BoxDecoration(
                    border: Border.all(color: grey),
                    borderRadius: BorderRadius.circular(8)
                  ),
                ),
                              SizedBox(height: size.height * 0.06),

                 Center(
                   child: InkWell(
                      onTap: () {Get.back();},
                      child: Container(
                        height: size.height * 0.05,
                        width: size.width * 0.75,
                        decoration: BoxDecoration(
                            // border: Border.all(color: dark),
                            gradient: const LinearGradient(
                                colors: [
                                  primary,
                                  primaryy,
                                ],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight),
                            borderRadius: BorderRadius.circular(10)),
                        child: const Center(
                            child: Text('SUBMIT',
                                style: TextStyle(
                                    color: white,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 17))),
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
