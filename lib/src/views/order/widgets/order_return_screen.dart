// ignore_for_file: sized_box_for_whitespace, must_be_immutable, sort_child_properties_last
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../core/colors.dart';

class OrderReturnScreen extends StatelessWidget {
  OrderReturnScreen({super.key});
  RxString selectedTextType = 'Return product'.obs;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Order Return',
            style: TextStyle(fontWeight: FontWeight.w600)),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
              top: size.height * 0.03,
              left: size.width * 0.03,
              right: size.width * 0.03),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const Text('ORDERED ON 28 Aug 2023', style: TextStyle(color: dark)),
            const Text('ORDERED# 403-8896183-3096341',
                style: TextStyle(fontWeight: FontWeight.w600)),
            SizedBox(height: size.height * 0.02),
            Container(
              height: size.height * 0.14,
              width: size.width,
              // color: green,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Delivered on: 30 Aug 2023',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Colors.green,
                      )),
                  SizedBox(height: size.height * 0.01),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/images/jhutti.jpg',
                        width: size.width * 0.23,
                        height: size.height * 0.1,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('Rajasthani Jhuttis'),
                          const Text('Size 3'),
                          SizedBox(height: size.height * 0.02),
                          const Text(
                            'Return window closes on 8 Sep. 2023',
                            style: TextStyle(color: grey),
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: size.height * 0.03),
            const Divider(),
            SizedBox(height: size.height * 0.02),
            const Text('Why are you returning  this?',
                style: TextStyle(fontWeight: FontWeight.w600)),
            SizedBox(height: size.height * 0.03),
            // Container(
            //   height: size.height * 0.06,
            //   width: size.width,
            //   decoration: BoxDecoration(
            //       border: Border.all(color: grey),
            //       borderRadius: BorderRadius.circular(15)),
            //   child: const Padding(
            //     padding: EdgeInsets.all(8.0),
            //     child: Row(
            //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //       children: [
            //         Text(
            //           'Product damaged but shipping OK',
            //           style: TextStyle(color: grey),
            //         ),
            //         Icon(
            //           Icons.keyboard_arrow_down_outlined,
            //           size: 30,
            //         )
            //       ],
            //     ),
            //   ),
            // ),
            Container(
              height: size.height * 0.06,
              width: size.width,
              decoration: BoxDecoration(
                border: Border.all(color: grey),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: DropdownButton<String>(
                        icon: const Icon(Icons.keyboard_arrow_down_outlined),
                        items: const [
                          DropdownMenuItem<String>(
                            child: Text(
                              'Product damaged but shipping OK',
                              style: TextStyle(color: grey),
                            ),
                            value: 'Product damaged but shipping OK',
                          ),
                          DropdownMenuItem<String>(
                            child: Text(
                              'Missing parts or accessories',
                              style: TextStyle(color: grey),
                            ),
                            value: 'Missing parts or accessories',
                          ),
                          DropdownMenuItem<String>(
                            child: Text(
                              'Both product and box damaged',
                              style: TextStyle(color: grey),
                            ),
                            value: 'Both product and box damaged',
                          ),
                          DropdownMenuItem<String>(
                            child: Text(
                              'Wrong item was sent',
                              style: TextStyle(color: grey),
                            ),
                            value: 'Wrong item was sent',
                          ),
                          DropdownMenuItem<String>(
                            child: Text(
                              'Item defective or doesn’t work',
                              style: TextStyle(color: grey),
                            ),
                            value: 'Item defective or doesn’t work',
                          ),
                        ],
                        onChanged: (value) {},
                        underline: Container(),
                        isExpanded: true,
                        hint: const Text('Select reason',
                            style: TextStyle(color: grey)),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: size.height * 0.02),
            const Text('Comment'),
            SizedBox(height: size.height * 0.02),
            TextFormField(
              // controller: nameNumberController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
                hintText: 'Enter comment here....',
                contentPadding: EdgeInsets.symmetric(vertical: 20.0),
              ),
              minLines: 3,
              maxLines: 5,
            ),
            SizedBox(height: size.height * 0.02),
            const Text(
              'How can we make it right',
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
            Row(
              children: [
                Radio(
                  activeColor: primary,
                  value: 'Replace with the same product',
                  groupValue: selectedTextType.value,
                  onChanged: (value) {
                    selectedTextType.value = value!;
                  },
                ),
                const Text('Replace with the same product',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                    )),
              ],
            ),
            Row(
              children: [
                Radio(
                  activeColor: primary,
                  value: 'Return product',
                  groupValue: selectedTextType.value,
                  onChanged: (value) {
                    selectedTextType.value = value!;
                  },
                ),
                const Text('Return product',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                    )),
              ],
            ),
            const Divider(),
            const Text('How would you like to return your item?',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                )),
            SizedBox(height: size.height * 0.02),
            const Text('Pickup at the time of delivery',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500)),
            SizedBox(height: size.height * 0.01),
            const Text(
                'Your package will be picked up by a courier service at the time of delivery replacement / exchange order items, please keep your return items ready at the time of delivery.',
                style: TextStyle(fontSize: 12, color: grey)),
            SizedBox(height: size.height * 0.02),
            const Text('Pickup Address',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500)),
            Row(
              children: [
                const Text(
                    'Raiya Kar Bhavan Nr Times Of India, Ashram Road,\nAHEMEDABAD, GUJARAT, INDIA - 380009 Change Addres',
                    style: TextStyle(
                      fontSize: 11,
                    )),
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Change',
                      style: TextStyle(color: primary, fontSize: 11),
                    ))
              ],
            ),
          ]),
        ),
      ),
      bottomNavigationBar: InkWell(
        onTap: () {
          Get.back();
        },
        child: Container(
          height: size.height * 0.05,
          width: size.width * 0.54,
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              primary,
              primaryy,
            ], begin: Alignment.topLeft, end: Alignment.bottomRight),
            // borderRadius: BorderRadius.circular(10)
          ),
          child: const Center(
              child: Text('Confirm Your Pickup',
                  style: TextStyle(color: white, fontWeight: FontWeight.w700))),
        ),
      ),
    );
  }
}
