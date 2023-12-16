import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/colors.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        backgroundColor: white,
        title: const Text('Notification',
            style: TextStyle(fontWeight: FontWeight.w600)),
      ),
      body:ListView.builder(
        itemBuilder: (context, index){
          return _buildNotificationWidget(size: size);
        }
        )
    );
  }
}

class _buildNotificationWidget extends StatelessWidget {
  const _buildNotificationWidget({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(
            top: size.height * 0.03,
            left: size.width * 0.03,
            right: size.width * 0.03),
        child: Column(
          children: [
            Container(
              height: size.height * 0.15,
              width: size.width,
              color: lightgrey,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Container(
                      height: size.height * 0.1,
                      width: size.width * 0.18,
                      // color: grey,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image:
                                  AssetImage('assets/images/jootiewomen.jpg'),
                              fit: BoxFit.cover)),
                    ),
                    SizedBox(width: size.width * 0.04),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'Jooties',
                              style: TextStyle(
                                  fontWeight: FontWeight.w600, fontSize: 18),
                            ),
                            SizedBox(width: size.width * 0.33),
                            const Text(
                              '15/12/2023',
                              style: TextStyle(color: grey),
                            )
                          ],
                        ),
                        SizedBox(height: size.height * 0.01),
                        const Text('Get up to 50% off on all\nJutties '),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
