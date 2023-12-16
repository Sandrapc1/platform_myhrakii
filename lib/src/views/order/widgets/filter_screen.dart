// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../core/colors.dart';

class FilterScreen extends StatelessWidget {
  FilterScreen({super.key});
  RxString selectedOrderType = 'Orders'.obs;
  RxString selectedDateType = '2022'.obs;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        // actions: [
        //   TextButton(
        //     onPressed: () {},
        //     child: Container(
        //       height: size.height * 0.04,
        //       width: size.width * 0.2,
        //       decoration: BoxDecoration(
        //           border: Border.all(color: grey),
        //           borderRadius: BorderRadius.circular(10)),
        //       child: const Center(
        //           child: Text('Apply',
        //               style: TextStyle(
        //                   color: Colors.black,
        //                   fontWeight: FontWeight.w500,
        //                   fontSize: 15))),
        //     ),
        //   )
        // ],
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
                'FILER BY ORDER TYPE',
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              SizedBox(height: size.height * 0.01),
              const Divider(),
              Row(
                children: [
                  Radio(
                    activeColor: primary,
                    value: 'Orders',
                    groupValue: selectedOrderType.value,
                    onChanged: (value) {
                      selectedOrderType.value = value!;
                    },
                  ),
                  const Text('Orders',
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 19)),
                ],
              ),
              const Divider(),
              Row(
                children: [
                  Radio(
                    activeColor: primary,
                    value: 'Not yet shipped',
                    groupValue: selectedOrderType.value,
                    onChanged: (value) {
                      selectedOrderType.value = value!;
                    },
                  ),
                  const Text('Not yet shipped',
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 19)),
                ],
              ),
              const Divider(),
              Row(
                children: [
                  Radio(
                    activeColor: primary,
                    value: 'Cancelled',
                    groupValue: selectedOrderType.value,
                    onChanged: (value) {
                      selectedOrderType.value = value!;
                    },
                  ),
                  const Text('Cancelled',
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 19)),
                ],
              ),
              const Divider(),
              SizedBox(height: size.height * 0.02),
              const Text(
                'FILER BY ORDER DATE',
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              SizedBox(height: size.height * 0.01),
              const Divider(),
              Row(
                children: [
                  Radio(
                    activeColor: primary,
                    value: 'Last 30 days',
                    groupValue: selectedDateType.value,
                    onChanged: (value) {
                      selectedDateType.value = value!;
                    },
                  ),
                  const Text('Last 30 days',
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 19)),
                ],
              ),
              const Divider(),
              Row(
                children: [
                  Radio(
                    activeColor: primary,
                    value: 'Last 3 months',
                    groupValue: selectedDateType.value,
                    onChanged: (value) {
                      selectedDateType.value = value!;
                    },
                  ),
                  const Text('Last 3 months',
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 19)),
                ],
              ),
              const Divider(),
              Row(
                children: [
                  Radio(
                    activeColor: primary,
                    value: '2022',
                    groupValue: selectedDateType.value,
                    onChanged: (value) {
                      selectedDateType.value = value!;
                    },
                  ),
                  const Text('2022',
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 19)),
                ],
              ),
               const Divider(),
              Row(
                children: [
                  Radio(
                    activeColor: primary,
                    value: '2021',
                    groupValue: selectedDateType.value,
                    onChanged: (value) {
                      selectedDateType.value = value!;
                    },
                  ),
                  const Text('2021',
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 19)),
                ],
              ),
               const Divider(),
              Row(
                children: [
                  Radio(
                    activeColor: primary,
                    value: '2020',
                    groupValue: selectedDateType.value,
                    onChanged: (value) {
                      selectedDateType.value = value!;
                    },
                  ),
                  const Text('2020',
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 19)),
                ],
              ),
              const Divider(),
               SizedBox(height: size.height * 0.05),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {Navigator.pop(context);},
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
                            child: Text('Apply',
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
    );
  }
}
