// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:order_tracker_zen/order_tracker_zen.dart';
import 'package:platform_myhrakii/core/colors.dart';
import 'package:platform_myhrakii/src/views/order/widgets/review_screen.dart';

class TrackOrderScreen extends StatelessWidget {
  const TrackOrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Track Order',
            style: TextStyle(fontWeight: FontWeight.w600)),
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
              const Text('Arriving on : 1 sept 2023',
                  style: TextStyle(fontWeight: FontWeight.w600)),
              SizedBox(height: size.height * 0.02),
              InkWell(
                // onTap: (){Get.to(ReviewScreen());},
                child: Container(
                  height: size.height * 0.09,
                  width: size.width,
                  // color: green,
                  child: Row(
                    children: [
                      Image.asset('assets/images/jhutti.jpg'),
                      SizedBox(width: size.width * 0.05),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Rajasthani Jhuttis'),
                          Text('Size 3'),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: size.height * 0.04),
              OrderTrackerZen(
                success_color: primary,
                tracker_data: [
                  TrackerData(
                    title: "Order Place",
                    date: "Sat, 8 Apr '22",
                    tracker_details: [
                      TrackerDetails(
                        title: "Your order was placed on Zenzzen",
                        datetime: "Sat, 8 Apr '22 - 17:17",
                      ),
                      TrackerDetails(
                        title: "Zenzzen Arranged A Callback Request",
                        datetime: "Sat, 8 Apr '22 - 17:42",
                      ),
                    ],
                  ),
                  TrackerData(
                    title: "Order Shipped",
                    date: "Sat, 8 Apr '22",
                    tracker_details: [
                      TrackerDetails(
                        title: "Your order was shipped with MailDeli",
                        datetime: "Sat, 8 Apr '22 - 17:50",
                      ),
                    ],
                  ),
                  TrackerData(
                    title: "Order Delivered",
                    date: "Sat,8 Apr '22",
                    tracker_details: [
                      TrackerDetails(
                        title: "You received your order, by MailDeli",
                        datetime: "Sat, 8 Apr '22 - 17:51",
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: size.height * 0.02),
              const Text(
                'SHIPPING ADDRESS',
                style: TextStyle(color: primary, fontWeight: FontWeight.w600),
              ),
              SizedBox(height: size.height * 0.02),
              const Text('Sandra', style: TextStyle(color: grey)),
              const Text(
                'Ponnum kunnun House Thrissur pin 678973',
                style: TextStyle(color: grey),
              ),
               SizedBox(height: size.height * 0.02),
              const Text('Order # 403-8896183-3096341',
                  style: TextStyle(fontWeight: FontWeight.w600)),
            ],
          ),
        ),
      ),
    );
  }
}
