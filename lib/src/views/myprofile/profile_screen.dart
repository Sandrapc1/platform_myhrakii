import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:platform_myhrakii/core/colors.dart';
import 'package:platform_myhrakii/src/views/myprofile/widgets/otp_screen.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    TextEditingController phoneNumberController = TextEditingController();
    TextEditingController nameNumberController = TextEditingController();
    TextEditingController emailNumberController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'My Profile',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 22,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            left: size.width * 0.05,
            top: size.height * 0.02,
            right: size.width * 0.05,
          ),
          child: Form(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Personal Info',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 15,
                          ),
                        ),
                        Text(
                          'Update your personal details here',
                          style: TextStyle(fontSize: 10, color: dark),
                        ),
                      ],
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.mode_edit_outlined,
                        color: primary,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: size.height * 0.03),
                TextFormField(
                  controller: nameNumberController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    ),
                    hintText: 'Name',
                  ),
                ),
                SizedBox(
                  height: size.height * 0.02,
                ),
                TextFormField(
                  controller: phoneNumberController,
                  decoration: InputDecoration(
                      border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                      ),
                      hintText: 'Mobile Number',
                      suffixIcon: TextButton(
                          onPressed: () {Get.to(const OtpScreen());},
                          child: const Text(
                            'VERIFY',
                            style: TextStyle(
                                decoration: TextDecoration.underline,
                                decorationThickness: 1,
                                color: primary,
                                decorationColor: primary),
                          ))),
                  keyboardType: TextInputType.phone,
                ),
                SizedBox(height: size.height * 0.02),
                TextFormField(
                  controller: emailNumberController,
                  decoration:  InputDecoration(
                    border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    ),
                    hintText: 'abc@gmail.com',
                    suffixIcon: TextButton(
                          onPressed: () {
                            Get.to(const OtpScreen());
                          },
                          child: const Text(
                            'VERIFY',
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              decorationThickness: 1,
                              color: primary,
                              decorationColor: primary
                            ),
                          )
                          )
                  ),
                  keyboardType: TextInputType.emailAddress,
                ),
                SizedBox(height: size.height * 0.02),
                TextFormField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    ),
                    hintText: 'DD/MM/YY',
                  ),
                  keyboardType: TextInputType.datetime,
                ),
                SizedBox(height: size.height * 0.09),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Container(
                        height: size.height * 0.05,
                        width: size.width * 0.75,
                        decoration: BoxDecoration(
                            // border: Border.all(color: dark),
                            gradient: const LinearGradient(
                                colors: [
                                  primary,
                                  primaryy,
                                ],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight),
                            borderRadius: BorderRadius.circular(10)),
                        child: const Center(
                            child: Text('SAVE',
                                style: TextStyle(
                                    color: white,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 17))),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
