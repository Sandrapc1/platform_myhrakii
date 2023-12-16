import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pinput/pinput.dart';
import 'package:platform_myhrakii/core/colors.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
        width: 56,
        height: 60,
        textStyle: const TextStyle(fontSize: 22, color: Colors.black),
        decoration: BoxDecoration(
          border: Border.all(color: grey),
          // color: Colors.pink.shade100
          borderRadius: BorderRadius.circular(8),
        ));
    var size = MediaQuery.of(context).size;
    return Scaffold(
      // body: Padding(
      //   padding: EdgeInsets.only(top: size.height * 0.25),
      //   child:  Center(
      //     child: Column(
      //       children: [
      //         const Text(
      //           'WE SEND YOU AN OTP',
      //           style: TextStyle(color: primary,fontSize: 20,fontWeight: FontWeight.w500),
      //         ),
      //         SizedBox(height: size.height*0.01),
      //         const Text(
      //           'Please enter the 4 digits number to',
      //           style:  TextStyle(color: grey),
      //         ),
      //         const Text(
      //           'Verify your',
      //           style: TextStyle(color: grey),
      //         ),
      //         Row(
      //           mainAxisAlignment: MainAxisAlignment.center,
      //           children: [
      //             const Text(
      //               'mobile number +91 7847834530',
      //               style: TextStyle(color: dark),
      //             ),
      //             IconButton(onPressed: (){}, icon: const Icon(Icons.edit_square))
      //           ],
      //         ),
      //       ],
      //     ),
      //   ),
      // ),

      body: SingleChildScrollView(
        child: Center(
          child: Container(
            margin: EdgeInsets.only(top: size.height * 0.26),
            child: Column(
              children: [
                const Text(
                  'WE SEND YOU AN OTP',
                  style: TextStyle(
                      color: primary,
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(height: size.height * 0.01),
                const Text(
                  'Please enter the 4 digits number to',
                  style: TextStyle(color: grey),
                ),
                const Text(
                  'Verify your',
                  style: TextStyle(color: grey),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'mobile number +91 7847834530',
                      style: TextStyle(color: dark),
                    ),
                    IconButton(
                        onPressed: () {}, icon: const Icon(Icons.edit_square))
                  ],
                ),
                SizedBox(height: size.height * 0.02),
                Pinput(
                  length: 4,
                  defaultPinTheme: defaultPinTheme,
                  focusedPinTheme: defaultPinTheme.copyWith(
                      decoration: defaultPinTheme.decoration!
                          .copyWith(border: Border.all(color: grey))),
                  onCompleted: (pin) => debugPrint(pin),
                ),
                SizedBox(height: size.height * 0.07),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {Get.back();},
                      child: Container(
                        height: size.height * 0.04,
                        width: size.width * 0.8,
                        decoration: BoxDecoration(
                            // border: Border.all(color: dark),
                            gradient: const LinearGradient(
                                colors: [
                                  primary,
                                  primaryy,
                                  primaryy,
                                ],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight),
                            borderRadius: BorderRadius.circular(10)),
                        child: const Center(
                            child: Text('CONTINUE',
                                style: TextStyle(
                                    color: white,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 17))),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: size.height * 0.01),
                 Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  const Text('Request new OTP again in'),
                  SizedBox(width: size.width * 0.01),
                  const Text('30 secs',style: TextStyle(color: primary),),
                  ])
              ],
            ),
          ),
        ),
      ),
    );
  }
}
