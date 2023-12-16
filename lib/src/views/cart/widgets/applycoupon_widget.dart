// ignore_for_file: non_constant_identifier_names, avoid_types_as_parameter_names

import 'package:flutter/material.dart';

import '../../../../core/colors.dart';

class ApplyCouponsWidget extends StatelessWidget {
  const ApplyCouponsWidget({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.5,
      width: size.width,
      decoration: BoxDecoration(
          border: Border.all(color: gry),
          borderRadius: BorderRadius.circular(15)),
      child: Padding(
        padding:
            EdgeInsets.only(left: size.width * 0.04, top: size.height * 0.02),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: size.height * 0.19,
              width: size.width * 0.87,
              decoration: BoxDecoration(
                  border: Border.all(color: grey),
                  borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: EdgeInsets.only(
                    left: size.width * 0.03, top: size.height * 0.02),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Apply Coupons',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w500),
                      ),
                      SizedBox(height: size.height * 0.02),
                      Container(
                        height: size.height * 0.052,
                        width: size.width * 0.8,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            border: Border.all(color: grey)),
                        child: Row(
                          children: [
                            SizedBox(width: size.width * 0.01),
                            const Expanded(
                              child: TextField(
                                decoration: InputDecoration(
                                  hintText: 'Enter code or discount code',
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                            Container(
                              decoration: const BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [primary, primaryy],
                                ),
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(10),
                                    bottomRight: Radius.circular(10)),
                              ),
                              child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.transparent,
                                  elevation: 0,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                ),
                                child: const Text(
                                  'APPLY',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextButton(
                              onPressed: () {},
                              child: const Text(
                                'View all offers',
                                style: TextStyle(
                                    color: primary,
                                    fontSize: 17,
                                    fontWeight: FontWeight.w400),
                              )),
                          DropdownButton(
                              icon: const Icon(Icons.keyboard_arrow_down_outlined),
                              elevation: 2,
                              iconSize: 36,
                              iconDisabledColor: Colors.black,
                              items: const [],
                              onChanged: (String) {})
                        ],
                      )
                    ]),
              ),
            ),
            SizedBox(height: size.height * 0.02),
            Container(
              height: size.height * 0.25,
              width: size.width * 0.87,
              decoration: BoxDecoration(
                  border: Border.all(color: grey),
                  borderRadius: BorderRadius.circular(15)),
              child: Padding(
                padding: EdgeInsets.only(
                    left: size.width * 0.03,
                    top: size.height * 0.02,
                    right: size.width * 0.03),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Payment Details',
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
                    ),
                    SizedBox(height: size.height * 0.02),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Subtotal(4 items)',
                          style: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 16),
                        ),
                        Text('₹3600',
                            style: TextStyle(
                                fontWeight: FontWeight.w400, fontSize: 16))
                      ],
                    ),
                    SizedBox(height: size.height * 0.01),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Discount',
                          style: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 16),
                        ),
                        Text('₹199',
                            style: TextStyle(
                                fontWeight: FontWeight.w400, fontSize: 16))
                      ],
                    ),
                    SizedBox(height: size.height * 0.01),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Shipping',
                          style: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 16),
                        ),
                        Text('₹50',
                            style: TextStyle(
                                fontWeight: FontWeight.w400, fontSize: 16))
                      ],
                    ),
                    SizedBox(height: size.height * 0.02),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'To Pay',
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 19),
                        ),
                        Text('₹3401',
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 19))
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
