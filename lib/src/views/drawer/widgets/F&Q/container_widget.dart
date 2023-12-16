import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:platform_myhrakii/src/views/drawer/widgets/F&Q/dropdown_screen.dart';
import '../../../../../core/colors.dart';

class ContainerWidgets extends StatelessWidget {
  const ContainerWidgets({super.key, required this.size});

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: size.height * 0.06,
          width: size.width,
          decoration: BoxDecoration(
              border: Border.all(color: grey),
              borderRadius: BorderRadius.circular(8)),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'General',
                  style: TextStyle(fontSize: 17),
                ),
                IconButton(
                    onPressed: () {
                      Get.to(const DropDownScreen());
                    },
                    icon: const Icon(Icons.arrow_forward_ios_rounded))
              ],
            ),
          ),
        ),
        SizedBox(height: size.height * 0.02),
        Container(
          height: size.height * 0.06,
          width: size.width,
          decoration: BoxDecoration(
              border: Border.all(color: grey),
              borderRadius: BorderRadius.circular(8)),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Order Placement',
                  style: TextStyle(fontSize: 17),
                ),
                IconButton(
                    onPressed: () {
                      Get.to(const DropDownScreen());
                    },
                    icon: const Icon(Icons.arrow_forward_ios_rounded))
              ],
            ),
          ),
        ),
        SizedBox(height: size.height * 0.02),
        Container(
          height: size.height * 0.06,
          width: size.width,
          decoration: BoxDecoration(
              border: Border.all(color: grey),
              borderRadius: BorderRadius.circular(8)),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Account',
                  style: TextStyle(fontSize: 17),
                ),
                IconButton(
                    onPressed: () {
                      Get.to(const DropDownScreen());
                    },
                    icon: const Icon(Icons.arrow_forward_ios_rounded))
              ],
            ),
          ),
        ),
        SizedBox(height: size.height * 0.02),
        Container(
          height: size.height * 0.06,
          width: size.width,
          decoration: BoxDecoration(
              border: Border.all(color: grey),
              borderRadius: BorderRadius.circular(8)),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Order Status',
                  style: TextStyle(fontSize: 17),
                ),
                IconButton(
                    onPressed: () {
                      Get.to(const DropDownScreen());
                    },
                    icon: const Icon(Icons.arrow_forward_ios_rounded))
              ],
            ),
          ),
        ),
        SizedBox(height: size.height * 0.02),
        Container(
          height: size.height * 0.06,
          width: size.width,
          decoration: BoxDecoration(
              border: Border.all(color: grey),
              borderRadius: BorderRadius.circular(8)),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Shipping',
                  style: TextStyle(fontSize: 17),
                ),
                IconButton(
                    onPressed: () {
                      Get.to(const DropDownScreen());
                    },
                    icon: const Icon(Icons.arrow_forward_ios_rounded))
              ],
            ),
          ),
        ),
        SizedBox(height: size.height * 0.02),
        Container(
          height: size.height * 0.06,
          width: size.width,
          decoration: BoxDecoration(
              border: Border.all(color: grey),
              borderRadius: BorderRadius.circular(8)),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Cancellation',
                  style: TextStyle(fontSize: 17),
                ),
                IconButton(
                    onPressed: () {
                      Get.to(const DropDownScreen());
                    },
                    icon: const Icon(Icons.arrow_forward_ios_rounded))
              ],
            ),
          ),
        )
      ],
    );
  }
}
