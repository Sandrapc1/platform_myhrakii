// ignore_for_file: sized_box_for_whitespace
import 'package:flutter/material.dart';
import '../../../../core/colors.dart';

class AddtoCartTile extends StatelessWidget {
  const AddtoCartTile({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: size.height * 0.13,
          width: size.width * 0.96,
          // color: green,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: size.height * 0.09,
                width: size.width * 0.22,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/jootiewomen.jpg'),
                        fit: BoxFit.cover)),
              ),
              SizedBox(width: size.width * 0.03),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Rajasthani Jhutis',
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 17),
                  ),
                  const Text(
                    'Size: 4',
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 17),
                  ),
                  SizedBox(height: size.height * 0.01),
                  Container(
                    height: size.height * 0.04,
                    width: size.width * 0.26,
                    decoration: BoxDecoration(
                        border: Border.all(color: grey),
                        borderRadius: BorderRadius.circular(19)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.remove,
                            )),
                        const Text(
                          '1',
                          style: TextStyle(fontSize: 19),
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.add,
                              
                            )),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(width: size.width * 0.18),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text(
                    '₹900',
                    style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
                  ),
                  SizedBox(height: size.height * 0.02),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.delete_outline_sharp,
                        size: 25,
                      )),
                ],
              )
            ],
          ),
        ),
        const Divider()
      ],
    );
  }
}
