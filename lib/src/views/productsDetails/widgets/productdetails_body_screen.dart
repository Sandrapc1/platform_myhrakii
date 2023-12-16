import 'package:flutter/material.dart';
import 'package:platform_myhrakii/core/colors.dart';
import '../../home/widgets/footwear_screen.dart';
import 'product_details_screen.dart';
import 'slider.dart';

class ProductDetailsBodyWidget extends StatelessWidget {
  const ProductDetailsBodyWidget({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(height: size.height * 0.02),
        const ProductSlider(),
        SizedBox(height: size.height * 0.02),
        ProductDetailsWidgets(size),
        SizedBox(height: size.height * 0.02),
        const Text(
          'MOST VIEWED',
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 22),
        ),
        SizedBox(height: size.height * 0.02),
        FootwearRow(),
        // SizedBox(height: size.height * 0.02),
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
        SizedBox(height: size.height * 0.02),
        SizedBox(height: size.height * 0.02),
        const Text(
          'RECENTLY VIEWED',
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 22),
        ),
        SizedBox(height: size.height * 0.02),
        FootwearRow(),
        SizedBox(height: size.height * 0.03),
        // SizedBox(height: size.height * 0.03),
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
        SizedBox(height: size.height * 0.02),
        
      ],
    );
  }
}
