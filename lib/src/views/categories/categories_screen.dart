// ignore_for_file: sized_box_for_whitespace, must_be_immutable

import 'package:flutter/material.dart';
import 'package:platform_myhrakii/src/views/drawer/drawer.dart';
import 'package:platform_myhrakii/src/views/home/widgets/search_bar.dart';
import '../../../core/colors.dart';
import 'appbar_widget.dart';

class CategoriesScreen extends StatelessWidget {
   CategoriesScreen({super.key});

  List<Map<String, String>> cardDataList = [
      {'cardImage':'assets/images/image 8.png','cardText':"WOMEN'S CLOTHING"},
      {'cardImage':'assets/images/image 9.png','cardText':"MEN'S CLOTHING"},
      {'cardImage':'assets/images/image 4.png','cardText':'BAGS & FOOTWEAR'},
      {'cardImage':'assets/images/image 5.png','cardText':'HOME & LIVING'},
      {'cardImage':'assets/images/image 6.png','cardText':'ORGANIC BEAUTY'},
      {'cardImage':'assets/images/image 7.png','cardText':'ART COLLECTIBLE'},
    ];

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: white,
      drawer: const DrawerBar(),
      appBar: AppbarWidget(size, context),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SearchBarWidget(size: size),
            SizedBox(height: size.height * 0.02),
            Padding(
              padding: EdgeInsets.only(
                  left: size.width * 0.04,
                  // top: size.height * 0.01,
                  right: size.width * 0.03),
              child: Container(
                height:size.height*0.67,
                width:size.width,
                // color: green,
              child: GridView.builder(
                itemCount: 6,
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 8,
                      mainAxisSpacing: 8),
                  itemBuilder: (context, index) {
                    return  Card(
                      color: white,
                      elevation: 2,
                      child: Center(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(cardDataList[index]['cardImage']!),
                            SizedBox(height: size.height * 0.02),
                            Text(cardDataList[index]['cardText']!,style: const TextStyle(fontWeight: FontWeight.w600))
                          ],
                        ),
                      ),
                    );
                  }),
              ),
            )
          ],
        ),
      ),
    );
  }
}
