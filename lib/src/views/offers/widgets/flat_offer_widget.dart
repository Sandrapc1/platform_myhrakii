import 'package:flutter/material.dart';

import '../../../../core/colors.dart';

Container offersWiget(Size size) {
  return Container(
    height: size.height * 0.2,
    width: size.width,
    // color: red,
    decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/images/pillo.jpg'), fit: BoxFit.cover)),
    child: Stack(
      children: [
        Positioned(
          top: size.height * 0.01,
          left: size.width * 0.1,
          // right: size.width*0.01,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'FLAT',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w300),
              ),
              const Text(
                '30% OFF',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20.0,
                    fontWeight: FontWeight.w500),
              ),
              const Text(
                'On Cushions and\npillow covers',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 14.0,
                    fontWeight: FontWeight.w300),
              ),
              SizedBox(height: size.height * 0.01),
              Container(
                height: size.height * 0.037,
                width: size.width * 0.28,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: primary)),
                child: InkWell(
                  onTap: () async {},
                  child: const Center(
                    child: Text(
                      'SHOP NOW',
                      style: TextStyle(
                        color: primary,
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
