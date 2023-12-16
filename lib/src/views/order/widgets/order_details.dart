import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:platform_myhrakii/src/views/order/widgets/order_return_screen.dart';
import 'package:platform_myhrakii/src/views/productsDetails/product_screen.dart';
import '../../../../core/colors.dart';


class OrderDetailsScreen extends StatelessWidget {
  const OrderDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Order Details',
            style: TextStyle(fontWeight: FontWeight.w600)),
             actions: [
          TextButton(
            onPressed: () {},
            child: Container(
              height: size.height * 0.03,
              width: size.width * 0.27,
              decoration: BoxDecoration(
                  border: Border.all(color: primary),
                  borderRadius: BorderRadius.circular(10)),
              child: const Center(
                  child: Text('Download Invoice',
                      style: TextStyle(
                          color: primary,
                          fontWeight: FontWeight.w500,
                          fontSize: 10))),
            ),
          )
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
                'ORDERED ON 28 Aug 2032',
                style: TextStyle(color: dark),
              ),
              const Text(
                'ORDER# 403-4768389-43957341',
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
              ),
              SizedBox(height: size.height * 0.01),
              Container(
                height: size.height * 0.2,
                width: size.width,
                decoration: BoxDecoration(
                    border: Border.all(color: grey),
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Arriving on : 1 sept 2023',
                          style: TextStyle(fontWeight: FontWeight.w600)),
                      const Text(
                        'Shipped today',
                        style: TextStyle(color: Colors.green, fontSize: 13),
                      ),
                      SizedBox(height: size.height * 0.02),
                      Row(
                        children: [
                          Container(
                            height: size.height * 0.06,
                            width: size.width * 0.18,
                            child: Image.asset(
                              'assets/images/jootiewomen.jpg',
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(width: size.width * 0.02),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Rajasthani Jhuttis'),
                              Text('Size 3'),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: size.height * 0.01),
                      Row(
                        children: [
                          InkWell(
                            onTap: () {
                              Get.to(ProductDetailsScreen());
                            },
                            child: Container(
                              height: size.height * 0.04,
                              width: size.width * 0.4,
                              decoration: BoxDecoration(
                                  gradient: const LinearGradient(
                                    colors: [primary, primaryy],
                                    begin: Alignment.bottomLeft,
                                    end: Alignment.bottomRight,
                                  ),
                                  borderRadius: BorderRadius.circular(8)),
                              child: const Center(
                                  child: Text('Buy Again',
                                      style: TextStyle(
                                        color: white,
                                        fontWeight: FontWeight.w500,
                                      ))),
                            ),
                          ),
                          SizedBox(width: size.width * 0.06),
                          InkWell(
                            onTap: (){Get.to(OrderReturnScreen());},
                            child: Container(
                              height: size.height * 0.04,
                              width: size.width * 0.4,
                              decoration: BoxDecoration(
                                  border: Border.all(color: primary),
                                  borderRadius: BorderRadius.circular(8)),
                              child: const Center(
                                  child: Text('Return',
                                      style: TextStyle(
                                        color: primary,
                                        fontWeight: FontWeight.w500,
                                      ))),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: size.height * 0.03),
              Container(
                height: size.height * 0.25,
                width: size.width,
                decoration: BoxDecoration(
                    border: Border.all(color: grey),
                    borderRadius: BorderRadius.circular(8)),
                child: Padding(
                  padding: EdgeInsets.only(
                      left: size.width * 0.03,
                      top: size.height * 0.02,
                      right: size.width * 0.03),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Order Summery',
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 20),
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
              ),
              SizedBox(height: size.height * 0.02),
              Container(
                height: size.height * 0.15,
                width: size.width,
                decoration: BoxDecoration(
                    border: Border.all(color: grey),
                    borderRadius: BorderRadius.circular(8)),
                child: Padding(
                  padding: EdgeInsets.only(
                      left: size.width * 0.03,
                      top: size.height * 0.02,
                      right: size.width * 0.03),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Shipping Address',
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 20),
                      ),
                      SizedBox(height: size.height * 0.02),
                      const Text('Sandra',
                          style: TextStyle(fontWeight: FontWeight.w400)),
                      const Text(
                        'Ponnumkunnu House Thrissur Pin-684938',
                        style: TextStyle(fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: size.height * 0.02),
              Container(
                height: size.height * 0.11,
                width: size.width,
                decoration: BoxDecoration(
                    border: Border.all(color: grey),
                    borderRadius: BorderRadius.circular(8)),
                child: Padding(
                  padding: EdgeInsets.only(
                      left: size.width * 0.03,
                      top: size.height * 0.02,
                      right: size.width * 0.03),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Payment Method',
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 20),
                      ),
                      SizedBox(height: size.height * 0.01),
                      Row(
                        children: [
                          const Image(
                              image: AssetImage('assets/images/image 551.png')),
                          SizedBox(width: size.width * 0.01),
                          const Text(
                            '****0099',
                            style: TextStyle(fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}