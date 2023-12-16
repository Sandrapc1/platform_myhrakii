import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:platform_myhrakii/src/views/bottamnavigation/bottamnavigation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(        
      useMaterial3: true,
      textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
      ),
      // home: const HomeScreen(),
      home: const BottomNavigationBarWidget(),
      
    );
  }
}
