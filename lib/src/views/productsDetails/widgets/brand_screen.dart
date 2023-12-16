// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import '../../../../core/colors.dart';

BrandWidget(Size size) {
  return Row(
    children: [
      Container(
        height: size.height*0.07,
        width: size.width * 0.2,
        // color: primary,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: primary),
        ),
        child: Image.asset('assets/images/image 1.png'),
      ),
      SizedBox(width: size.width * 0.04),
      Container(
        // height: size.height*0.03,
        width: size.width * 0.2,
        // color: primary,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: primary),
        ),
        child: Image.asset('assets/images/image 2.png'),
      ),
      SizedBox(width: size.width * 0.04),
      Container(
        // height: size.height*0.03,
        width: size.width * 0.2,
        // color: primary,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: primary),
        ),
        child: Image.asset('assets/images/hand-made 1.png'),
      ),
    ],
  );
}
