// ignore_for_file: non_constant_identifier_names, avoid_types_as_parameter_names, sized_box_for_whitespace
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:platform_myhrakii/src/views/checkout/checkout_screen.dart';
import 'package:platform_myhrakii/src/views/drawer/drawer.dart';
import 'package:platform_myhrakii/src/views/home/widgets/footwear_screen.dart';
import '../../../core/colors.dart';
import 'widgets/addto_crat_tile.dart';
import 'widgets/appbar_screen.dart';
import 'widgets/applycoupon_widget.dart';

class AddtoCartScreen extends StatelessWidget {
  const AddtoCartScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: white,
      drawer: const DrawerBar(),
      appBar: AppBarScreen(size, context),
      bottomNavigationBar:  Container(
         height: size.height * 0.06,
              width: size.width,
              color: white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: size.height * 0.07,
              width: size.width * 0.3,
              // decoration: BoxDecoration(
              //     border: Border.all(color: primary),
              //     borderRadius: BorderRadius.circular(10)),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Text('₹3401',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 17)),
                Text('3 items(S)',style: TextStyle(color: grey),),
                ],
              ),
            ),
            SizedBox(width: size.width * 0.05),
            InkWell(
              onTap: () {
                Get.to( CheckoutScreen());
              },
              child: Container(
                height: size.height * 0.05,
                width: size.width * 0.54,
                decoration: BoxDecoration(
                    gradient: const LinearGradient(colors: [
                      primary,
                      primaryy,
                    ], begin: Alignment.topLeft, end: Alignment.bottomRight),
                    borderRadius: BorderRadius.circular(10)),
                child: const Center(
                    child: Text('PROCEED TO PAY',
                        style: TextStyle(
                            color: white, fontWeight: FontWeight.w700))),
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'My Cart(3)',
                    style: TextStyle(fontWeight: FontWeight.w400, fontSize: 19),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Clear All',
                      style: TextStyle(
                        color: primary,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        decoration: TextDecoration.underline,
                        decorationColor: primary,
                        decorationThickness: 1,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: size.height * 0.02),
              ListView.separated(
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) {
                  return AddtoCartTile(size: size);
                },
                separatorBuilder: (BuildContext context, int index) {
                  return SizedBox(height: size.height * 0.01);
                },
                itemCount: 3,
              ),
              SizedBox(height: size.height * 0.03),
              const Text(
                "DON'T MISS OUT",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 23),
              ),
              SizedBox(height: size.height * 0.02),
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
              SizedBox(height: size.height * 0.04),
              ApplyCouponsWidget(size: size),
              SizedBox(height: size.height * 0.06),
              Container(
                height: size.height * 0.04,
                width: size.width,
                color: great,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.celebration,
                      color: darkgreen,
                    ),
                    SizedBox(width: size.width * 0.02),
                    const Text(
                      'Great! You are saving ₹199 in total',
                      style: TextStyle(
                          color: darkgreen, fontWeight: FontWeight.w500),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
