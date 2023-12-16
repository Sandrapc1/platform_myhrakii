// import 'package:flutter/material.dart';
// import 'package:platform_myhrakii/core/colors.dart';


// class BottomNavigationBarWidget extends StatefulWidget {
//   const BottomNavigationBarWidget({
//     Key? key,
//   }) : super(key: key);

//   @override
//   State<BottomNavigationBarWidget> createState() =>
//       _BottomNavigationBarWidgetState();
// }

// class _BottomNavigationBarWidgetState extends State<BottomNavigationBarWidget> {
//   int _currentIndex = 0;
//   // final List screens=[
//   //   HomeScreen(),
//   //   CategoriesScreen(),
//   //   OffersScreen(),
//   //   AccountScreen()
//   // ];

//   @override
//   Widget build(BuildContext context) {
//     var size=MediaQuery.of(context).size;
//     return Container(
//       decoration: const BoxDecoration(
//         gradient: LinearGradient(
//           colors: [primary, primaryy],
//           begin: Alignment.bottomLeft,
//           end: Alignment.bottomRight,
//         ),
//       ),
//       child: BottomNavigationBar(
//         backgroundColor: Colors.transparent,
//         currentIndex: _currentIndex,
//         type: BottomNavigationBarType.fixed,
//         unselectedItemColor: Colors.white,
//         selectedItemColor: Colors.white,
//         elevation: 0.0,
//         selectedFontSize: 14,
//         unselectedFontSize: 14,
//         items: [
//           BottomNavigationBarItem(
//             backgroundColor: Colors.transparent,
//             icon: _currentIndex == 0
//                 ? const Icon(Icons.home_filled)
//                 :Image.asset('assets/images/home.png',height:size.height*0.027,),
//             label: 'HOME',
//           ),
//           BottomNavigationBarItem(
//             backgroundColor: Colors.transparent,
//             icon: _currentIndex == 1
//                 ? const Icon(Icons.grid_view_sharp)
//                 : const Icon(Icons.grid_view),
//             label: 'CATEGORIES',
//           ),
//           BottomNavigationBarItem(
//             backgroundColor: Colors.transparent,
//             icon: _currentIndex == 2 
//                 ? const Icon(Icons.verified)
//                 : const Icon(Icons.verified_outlined),
//             label: 'OFFERS',
//           ),
//           BottomNavigationBarItem(
//             backgroundColor: Colors.transparent,
//             icon: _currentIndex == 3
//                 ? const Icon(Icons.account_circle_rounded)
//                 : const Icon(Icons.account_circle_outlined),
//             label: 'ACCOUNT',
//           ),
//         ],
//         onTap: (index) {
//           setState(() {
//             _currentIndex = index;
            
//           });
//         },
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'package:platform_myhrakii/core/colors.dart';
import 'package:platform_myhrakii/src/views/categories/categories_screen.dart';
import 'package:platform_myhrakii/src/views/home/home_screen.dart';
import 'package:platform_myhrakii/src/views/offers/offer_screen.dart';
import '../myprofile/profile_screen.dart';

class BottomNavigationBarWidget extends StatefulWidget {
  const BottomNavigationBarWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<BottomNavigationBarWidget> createState() =>
      _BottomNavigationBarWidgetState();
}

class _BottomNavigationBarWidgetState extends State<BottomNavigationBarWidget> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    const HomeScreen(),
     CategoriesScreen(),
    const OffersScreen(),
    const AccountScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: _screens,
      ),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [primary, primaryy],
            begin: Alignment.bottomLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: BottomNavigationBar(
          backgroundColor: Colors.transparent,
          currentIndex: _currentIndex,
          type: BottomNavigationBarType.fixed,
          unselectedItemColor: Colors.white,
          selectedItemColor: Colors.white,
          elevation: 0.0,
          selectedFontSize: 14,
          unselectedFontSize: 14,
          items: [
            BottomNavigationBarItem(
              backgroundColor: Colors.transparent,
              icon: _currentIndex == 0
                  ? const Icon(Icons.home_filled)
                  : Image.asset('assets/images/home.png', height: size.height * 0.027),
              label: 'HOME',
            ),
            BottomNavigationBarItem(
              backgroundColor: Colors.transparent,
              icon: _currentIndex == 1
                  ? const Icon(Icons.grid_view_sharp)
                  : const Icon(Icons.grid_view),
              label: 'CATEGORIES',
            ),
            BottomNavigationBarItem(
              backgroundColor: Colors.transparent,
              icon: _currentIndex == 2
                  ? const Icon(Icons.verified)
                  : const Icon(Icons.verified_outlined),
              label: 'OFFERS',
            ),
            BottomNavigationBarItem(
              backgroundColor: Colors.transparent,
              icon: _currentIndex == 3
                  ? const Icon(Icons.account_circle_rounded)
                  : const Icon(Icons.account_circle_outlined),
              label: 'ACCOUNT',
            ),
          ],
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
        ),
      ),
    );
  }
}

