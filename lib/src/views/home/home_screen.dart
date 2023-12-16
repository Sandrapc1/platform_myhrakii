import 'package:flutter/material.dart';
import 'package:platform_myhrakii/core/colors.dart';
import 'package:platform_myhrakii/src/views/drawer/drawer.dart';
import 'widgets/appbar.dart';
import 'widgets/homescreen_body.dart';
import 'widgets/search_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: white,
      drawer:  const DrawerBar(),
      appBar: appBarWidget(size, context),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(top: 40),
              child: HomeScreenBodyWidgets(size: size),
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
      // bottomNavigationBar: const BottomNavigationBarWidget(),
    );
  }
}
