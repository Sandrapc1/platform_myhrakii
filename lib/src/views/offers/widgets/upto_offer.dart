// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

Container OfferWidget(Size size) {
    return Container(
        height: size.height * 0.2,
        width: size.width,
        // color: red,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/iStocks.jpg'),
                fit: BoxFit.cover)),
        child: Stack(
          children: [
            Positioned(
              top: size.height * 0.03,
              left: size.width * 0.5,
              // right: size.width*0.01,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'UP TO',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w300),
                  ),
                  const Text(
                    '50% OFF',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20.0,
                        fontWeight: FontWeight.w500),
                  ),
                  const Text(
                    'On table lamps',
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
                        border: Border.all(color: Colors.white)),
                    child: InkWell(
                      onTap: () async {},
                      child: const Center(
                        child: Text(
                          'SHOP NOW',
                          style: TextStyle(
                            color: Colors.white,
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