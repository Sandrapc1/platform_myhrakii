// ignore_for_file: sized_box_for_whitespace, must_be_immutable
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:platform_myhrakii/src/views/drawer/drawer.dart';
import 'package:platform_myhrakii/src/views/home/widgets/search_bar.dart';
import '../../../core/colors.dart';
import '../home/widgets/appbar.dart';

class ListingScreen extends StatelessWidget {
  ListingScreen({super.key});

  List categoryList = [
    'Clothing',
    'Fabrics',
    'Jewellery',
    'Furnishing',
  ];

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: white,
      drawer: const DrawerBar(),
      appBar: appBarWidget(size, context),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SearchBarWidget(size: size),
            SizedBox(height: size.height * 0.01),
            Container(
              height: size.height * 0.08,
              width: size.width,
              // color: primary,
              child: ListView.builder(
                  itemCount: 4,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          Container(
                            height: size.height * 0.04,
                            width: size.width * 0.3,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              gradient: const LinearGradient(
                                colors: [primary, primaryy, primaryy],
                                begin: Alignment.bottomLeft,
                                end: Alignment.bottomRight,
                              ),
                            ),
                            child: Center(
                                child: Text(
                              categoryList[index],
                              style: const TextStyle(
                                  color: white,
                                  // fontWeight: FontWeight.w600,
                                  fontSize: 17),
                            )),
                          ),
                        ],
                      ),
                    );
                  }),
            ),
            SizedBox(height: size.height * 0.01),
            Container(
              height: size.height * 0.2,
              width: size.width,
              // color: red,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/sofaset.jpg'),
                      fit: BoxFit.cover)),
              child: Column(
                children: [
                  SizedBox(height: size.height * 0.02),
                  Text(
                    'Refreshing',
                    style: TextStyle(
                        color: Colors.yellow,
                        fontFamily: GoogleFonts.ruthie().fontFamily,
                        fontSize: 24,
                        fontWeight: FontWeight.w300),
                  ),
                  Text(
                    'HOME DECOR IDEAS',
                    style: TextStyle(
                        color: white,
                        fontSize: 17.0,
                        fontFamily: GoogleFonts.ptSerifCaption().fontFamily,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
            SizedBox(height: size.height * 0.02),
            const Text('RESULTS',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 22)),
            SizedBox(height: size.height * 0.04),
            // GridView.builder(
            //     itemCount: 4,
            //     gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            //         crossAxisCount: 2, mainAxisSpacing: 9, crossAxisSpacing: 9),
            //     itemBuilder: (context, index) {
            //       return const Card();
            //     })
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: size.height * 0.09,
        width: size.width,
        decoration: const BoxDecoration(
          // borderRadius: BorderRadius.circular(30),
          gradient: LinearGradient(
            colors: [primary, primaryy, primaryy],
            begin: Alignment.bottomLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.only(
              left: size.width * 0.15, right: size.width * 0.15),
          child: Row(
            children: [
              TextButton(
                  onPressed: () {},
                  child: Row(
                    children: [
                      const Icon(
                        Icons.sort,
                        color: white,
                        size: 27,
                      ),
                      SizedBox(width: size.width * 0.01),
                      const Text(
                        'SORT BY',
                        style: TextStyle(color: white, fontSize: 20),
                      )
                    ],
                  )),
              SizedBox(width: size.width * 0.03),
              Image.asset('assets/images/Rectangle.png'),
              SizedBox(width: size.width * 0.03),
              TextButton(
                  onPressed: () {},
                  child: Row(
                    children: [
                      const Icon(
                        Icons.filter_alt_outlined,
                        color: white,
                        size: 27,
                      ),
                      SizedBox(width: size.width * 0.01),
                      const Text(
                        'FILTER',
                        style: TextStyle(color: white, fontSize: 20),
                      )
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
