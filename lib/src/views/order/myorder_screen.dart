// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:platform_myhrakii/core/colors.dart';
import 'package:platform_myhrakii/src/views/order/widgets/arrival_product_screen.dart';
import 'package:platform_myhrakii/src/views/order/widgets/cancelorder_screen.dart';
import 'package:platform_myhrakii/src/views/order/widgets/filter_screen.dart';
import 'package:platform_myhrakii/src/views/order/widgets/order_cancel_details_screen.dart';
import 'package:platform_myhrakii/src/views/order/widgets/order_details.dart';
import 'package:platform_myhrakii/src/views/order/widgets/shipping_orderdetails.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        backgroundColor: white,
        title: const Text('My Order',
            style: TextStyle(fontWeight: FontWeight.w600)),
        actions: [
          IconButton(
              onPressed: () {
                Get.to(FilterScreen());
              },
              icon: const Icon(
                Icons.filter_alt_outlined,
                color: primary,
                size: 28,
              ))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
              top: size.height * 0.03,
              left: size.width * 0.03,
              right: size.width * 0.03),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'ALL ORDER',
                style: TextStyle(color: primary, fontWeight: FontWeight.w600),
              ),
              const Divider(),
              InkWell(
                onTap: () {
                  Get.to(const ShippingProduct());
                },
                child: Container(
                  height: size.height * 0.1,
                  width: size.width,
                  // color: primaryy,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset('assets/images/jootiewomen.jpg'),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Rajasthani Jhuttis',
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                              )),
                          Text(
                            'Arriving on: 1 Sept 2023',
                            style: TextStyle(color: Colors.green),
                          ),
                        ],
                      ),
                      const Icon(Icons.arrow_forward_ios_outlined)
                    ],
                  ),
                ),
              ),
              const Divider(),
              InkWell(
                onTap: () {
                  Get.to(const CancelOrderDetailsScreen());
                },
                child: Container(
                  height: size.height * 0.1,
                  width: size.width,
                  // color: primaryy,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset('assets/images/jootiewomen.jpg'),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Rajasthani Jhuttis',
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                              )),
                          Text(
                            'Cancelled: 1 Sept 2023',
                            style: TextStyle(color: Colors.red),
                          ),
                        ],
                      ),
                      const Icon(Icons.arrow_forward_ios_outlined)
                    ],
                  ),
                ),
              ),
              const Divider(),
              InkWell(
                onTap: () {
                  Get.to(const OrderDetailsScreen());
                },
                child: Container(
                  height: size.height * 0.1,
                  width: size.width,
                  // color: primaryy,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset('assets/images/jootiewomen.jpg'),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Rajasthani Jhuttis',
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                              )),
                          Text(
                            'Arriving on: 1 Sept 2023',
                            style: TextStyle(color: Colors.green),
                          ),
                        ],
                      ),
                      const Icon(Icons.arrow_forward_ios_outlined)
                    ],
                  ),
                ),
              ),
              const Divider(),
              InkWell(
                onTap: () {
                  Get.to(const OrderDetailsScreen());
                },
                child: Container(
                  height: size.height * 0.1,
                  width: size.width,
                  // color: primaryy,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset('assets/images/jootiewomen.jpg'),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Rajasthani Jhuttis',
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                              )),
                          Text(
                            'Arriving on: 1 Sept 2023',
                            style: TextStyle(color: Colors.green),
                          ),
                        ],
                      ),
                      const Icon(Icons.arrow_forward_ios_outlined)
                    ],
                  ),
                ),
              ),
              const Divider(),
              InkWell(
                onTap: (){Get.to(ArrivalDetailsScreen());},
                child: Container(
                  height: size.height * 0.1,
                  width: size.width,
                  // color: primaryy,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset('assets/images/jootiewomen.jpg'),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Rajasthani Jhuttis',
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                              )),
                          Text(
                            'Delivered on: 1 Sept 2023',
                            style: TextStyle(color: Colors.green),
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: primary,
                              ),
                              Icon(
                                Icons.star,
                                color: primary,
                              ),
                              Icon(
                                Icons.star,
                                color: primary,
                              ),
                              Icon(
                                Icons.star,
                                color: grey,
                              ),
                              Icon(
                                Icons.star,
                                color: grey,
                              ),
                            ],
                          )
                        ],
                      ),
                      const Icon(Icons.arrow_forward_ios_outlined)
                    ],
                  ),
                ),
              ),
              const Divider()
            ],
          ),
        ),
      ),
    );
  }
}
