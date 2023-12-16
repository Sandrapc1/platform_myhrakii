import 'package:flutter/material.dart';
import '../../../../core/colors.dart';
import 'footwear_screen.dart';
import 'carouselslider_screen.dart';
import 'categoriesRow_screen.dart';
import 'craft_widget_screen.dart';
import 'craftstories_screen.dart';
import 'customerdetails_screen.dart';
import 'popularides_screen.dart';
import 'shopbycategory_screen.dart';

class HomeScreenBodyWidgets extends StatelessWidget {
  const HomeScreenBodyWidgets({super.key,required this.size});

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: size.height * 0.03),
        CategoriesRow(),
        SizedBox(height: size.height * 0.03),
        const CarouselSliderDemo(),
        const SizedBox(height: 10),
        const Text(
          'NEW ARRIVALS',
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 22),
        ),
        SizedBox(height: size.height * 0.03),
        Row(
          children: [
            FootwearRow(),
          ],
        ),
        SizedBox(height: size.height * 0.03),
        Container(
          height: size.height * 0.003,
          width: size.width * 0.3,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            gradient: const LinearGradient(
              colors: [primary, grey, grey, grey, grey],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ),
            color: primary,
          ),
        ),
        SizedBox(height: size.height * 0.02),
        TextButton(
          onPressed: () {},
          child: const Text(
            'VIEW ALL',
            style: TextStyle(
              color: primary,
              fontSize: 16,
              fontWeight: FontWeight.w600,
              decoration: TextDecoration.underline,
              decorationColor: primaryy,
              decorationThickness: 1,
            ),
          ),
        ),
        SizedBox(height: size.height * 0.03),
        CraftWidget(size: size),
        SizedBox(height: size.height * 0.03),
        const Text(
          'POPULAR  GIFT  IDEAS',
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 22),
        ),
        PopularIdeasScreen(size: size),
        SizedBox(height: size.height * 0.03),
        Container(
          height: size.height * 0.003,
          width: size.width * 0.3,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            gradient: const LinearGradient(
              colors: [primary, grey, grey, grey, grey],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ),
            color: primary,
          ),
        ),
        SizedBox(height: size.height * 0.02),
        TextButton(
          onPressed: () {},
          child: const Text(
            'VIEW ALL',
            style: TextStyle(
              color: primary,
              fontSize: 16,
              fontWeight: FontWeight.w600,
              decoration: TextDecoration.underline,
              decorationColor: primaryy,
              decorationThickness: 1,
            ),
          ),
        ),
        SizedBox(height: size.height * 0.03),
        const Text(
          'CUSTOMER REVIEWS',
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 22),
        ),
        SizedBox(height: size.height * 0.03),
        CustomerDetails(size: size),
        SizedBox(height: size.height * 0.03),
        const Text(
          'SHOP BY CATEGORY',
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 22),
        ),
        SizedBox(height: size.height * 0.03),
        ShopByCategoryWidget(size: size),
        SizedBox(height: size.height * 0.03),
        Text(
          'LOAD MORE',
          style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w600,
            decoration: TextDecoration.underline,
            decorationColor: primaryy,
            decorationThickness: 1,
            foreground: Paint()
              ..shader = const LinearGradient(colors: [primary, primaryy])
                  .createShader(
                const Rect.fromLTWH(0.0, 0.0, 200.0, 70.0),
              ),
          ),
        ),
        SizedBox(height: size.height * 0.03),
        const Text(
          'MOST VIEWED',
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 22),
        ),
        SizedBox(height: size.height * 0.03),
        FootwearRow(),
        SizedBox(height: size.height * 0.03),
        Container(
          height: size.height * 0.003,
          width: size.width * 0.3,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            gradient: const LinearGradient(
              colors: [primary, grey, grey, grey, grey],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ),
            color: primary,
          ),
        ),
        SizedBox(height: size.height * 0.02),
        TextButton(
          onPressed: () {},
          child: const Text(
            'VIEW ALL',
            style: TextStyle(
              color: primary,
              fontSize: 16,
              fontWeight: FontWeight.w600,
              decoration: TextDecoration.underline,
              decorationColor: primaryy,
              decorationThickness: 1,
            ),
          ),
        ),
        SizedBox(height: size.height * 0.03),
        const Text(
          'CRAFT STORIES',
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 22),
        ),
        SizedBox(height: size.height * 0.03),
        const CraftStoriesScreen(),
      ],
    );
  }
}
