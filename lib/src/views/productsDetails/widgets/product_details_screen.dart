// ignore_for_file: sized_box_for_whitespace, non_constant_identifier_names
import 'package:flick_video_player/flick_video_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:share_plus/share_plus.dart';
import '../../../../core/colors.dart';
import '../product_screen.dart';
import 'brand_screen.dart';
import 'select_varient.dart';
import 'tap_bar.dart';

Column ProductDetailsWidgets(Size size) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Row(
        children: [
          const Text(
            'RAJASTHANI JHUTTIS',
            style: TextStyle(fontSize: 21, fontWeight: FontWeight.w700),
          ),
          SizedBox(width: size.width * 0.18),
          InkWell(
              onTap: () {},
              child: const FaIcon(
                FontAwesomeIcons.heart,
                size: 30,
              )),
          SizedBox(width: size.width * 0.05),
          InkWell(
              onTap: () {
                Share.share('com.example.platform_myhrakii');
              },
              child: const Icon(
                Icons.share_rounded,
                size: 32,
              ))
        ],
      ),
      // SizedBox(height: size.height * 0.01),
      const Text(
        'By Creative Footwear',
        style:
            TextStyle(color: grey, fontWeight: FontWeight.w500, fontSize: 17),
      ),
      // SizedBox(height: size.height * 0.01),
      Row(
        children: [
          const Text(
            '₹900',
            style: TextStyle(fontSize: 19, fontWeight: FontWeight.w600),
          ),
          SizedBox(width: size.width * 0.02),
          const Text(
            '1000  Inclusive of all taxes',
            style: TextStyle(color: grey),
          ),
        ],
      ),
      SizedBox(height: size.height * 0.01),

      Container(
        height: size.height * 0.04,
        width: size.width * 0.48,
        // color: green,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8), color: greyyy),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.star,
              color: darkgreen,
              size: 28,
            ),
            SizedBox(width: size.width * 0.02),
            const Text(
              '4 | 20 Reviews',
              style: TextStyle(fontSize: 19, fontWeight: FontWeight.w500),
            )
          ],
        ),
      ),
      SizedBox(height: size.height * 0.02),
      const Divider(),
      //  SizedBox(height: size.height * 0.01),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            'Select Varient',
            style: TextStyle(fontSize: 21, fontWeight: FontWeight.w600),
          ),
          TextButton(
              onPressed: () {},
              child: const Text(
                'View All',
                style: TextStyle(
                  color: primary,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  decoration: TextDecoration.underline,
                  decorationColor: primary,
                  decorationThickness: 1,
                ),
              )),
        ],
      ),
      SizedBox(height: size.height * 0.02),
      Container(
          height: size.height * 0.08,
          width: size.width,
          // color: Colors.greenAccent,
          child: ListView.builder(
            itemCount: 1,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return SelectProduct(size: size);
            },
          )),
      SizedBox(height: size.height * 0.02),
      const Divider(),
      const Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Icon(
            Icons.local_shipping_outlined,
            size: 34,
          ),
          Text(
            'Free Shipping on orders above ₹750/-',
            style: TextStyle(fontWeight: FontWeight.w400, fontSize: 17),
          )
        ],
      ),
      Container(
        height: size.height * 0.052,
        width: size.width * 1.0,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25.0),
            border: Border.all(color: grey)
            // color: Colors.grey[200],
            ),
        margin: const EdgeInsets.all(16.0),
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Row(
          children: [
            Expanded(
              child: TextField(
                decoration: const InputDecoration(
                  hintText: 'Enter Pincode here',
                  hintStyle: TextStyle(color: Colors.grey),
                  border: InputBorder.none,
                ),
                keyboardType: TextInputType.number,
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.digitsOnly,
                  LengthLimitingTextInputFormatter(6),
                ],
              ),
            ),
            TextButton(
                onPressed: () {},
                child: const Text(
                  'Check',
                  style: TextStyle(
                      color: primary,
                      fontWeight: FontWeight.w600,
                      fontSize: 17),
                ))
          ],
        ),
      ),
      const Text(
        'Usually Delivered with 2-3 days',
        style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
      ),
      SizedBox(height: size.height * 0.02),
      const Divider(),
      // TapbarWidget(),
      TabBarWidget(),
      SizedBox(height: size.height * 0.02),
      Container(
        height: size.height * 0.06,
        width: size.width,
        // color: green,
        child: ListView.builder(
            itemCount: 1,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return BrandWidget(size);
            }),
      ),
      SizedBox(height: size.height * 0.02),
      Container(
        height: size.height * 0.45,
        width: size.width,
        color: light,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Jhuttis',
                style: TextStyle(
                  fontFamily: GoogleFonts.satisfy().fontFamily,
                  fontWeight: FontWeight.w600,
                  color: red,
                  fontSize: 29,
                ),
              ),
              const Text(
                'From Rajasthan',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 19,
                ),
              ),
              SizedBox(height: size.height * 0.02),
              Container(
                height: size.height * 0.2,
                width: size.width * 0.92,
                // decoration: BoxDecoration(
                //     borderRadius: BorderRadius.circular(50)),
                child: AspectRatio(
                  aspectRatio: 16 / 9,
                  child: FlickVideoPlayer(flickManager: flickManager),
                ),
              ),
              SizedBox(height: size.height * 0.02),
              const Center(
                child: Text(
                  'Rajasthani juttis and the mojari are',
                  style: TextStyle(fontWeight: FontWeight.w800),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: size.width * 0.06, top: size.height * 0.01),
                child: const Text(
                    'interchangeable terms. The traditional Indian footwear popularized in North India, especially around Rajasthan, Punjab, and Haryana.'),
              )
            ],
          ),
        ),
      ),
      Container(
        height: size.height * 0.7,
        width: size.width,
        color: greyyy,
        child: Column(
          children: [
            Container(
              height: size.height * 0.46,
              width: size.width,
              // color: primary,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/jhutti.jpg'),
                      fit: BoxFit.cover)),
            ),
            SizedBox(height: size.height * 0.01),
            Padding(
              padding: EdgeInsets.only(left: size.width * 0.04),
              child: const Text(
                'Accordingly, Rajasthani juttis are made of bright vibrant colors that are ergonomically very comfortable to use. Initially, the process of jutti making involved the use of leather and extensive embroidery.The use of juttis on a daily basis or for special occasions depends on their type. With the wedding season around the corner, here are 4 go-to brands to consider while shopping Rajasthani juttis.',
                style: TextStyle(color: gry, fontWeight: FontWeight.w400),
              ),
            ),
          ],
        ),
      ),
    ],
  );
}
