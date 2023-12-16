import 'package:flutter/material.dart';

import '../../../../core/colors.dart';

class SelectProduct extends StatelessWidget {
  const SelectProduct({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_back_ios)),
        Container(
          // height: size.height * 0.03,
          width: size.width * 0.4,
          decoration: BoxDecoration(
              border: Border.all(color: primary),
              borderRadius: BorderRadius.circular(10)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/image 3.png'),
              SizedBox(width: size.width * 0.03),
              const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [Text('COLOR : RED'), Text('SIZE : 3')],
              ),
            ],
          ),
        ),
        SizedBox(width: size.width * 0.04),
        Container(
          // height: size.height * 0.03,
          width: size.width * 0.4,
          decoration: BoxDecoration(
              border: Border.all(color: grey),
              borderRadius: BorderRadius.circular(10)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/image 3.png'),
              SizedBox(width: size.width * 0.03),
              const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [Text('COLOR : RED'), Text('SIZE : 3')],
              ),
            ],
          ),
        ),
        IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_forward_ios)),
      ],
    );
  }
}
