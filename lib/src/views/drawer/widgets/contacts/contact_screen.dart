import 'package:flutter/material.dart';
import 'package:platform_myhrakii/core/colors.dart';

class ContactsUsScreen extends StatelessWidget {
  const ContactsUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Contact Us',
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
              left: size.width * 0.04,
              top: size.height * 0.04,
              right: size.width * 0.04),
          child: Column(
            children: [
              Row(
                children: [
                  const Icon(Icons.phone_in_talk_outlined),
                  SizedBox(width: size.width * 0.04),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('+91-8353440124',
                          style: TextStyle(fontWeight: FontWeight.w500)),
                      Text('Mon - Sat, 9 am to 7 pm',
                          style: TextStyle(color: grey)),
                    ],
                  ),
                ],
              ),
              const Divider(),
              SizedBox(height: size.height * 0.02),
              Row(
                children: [
                  const Icon(Icons.email_outlined),
                  SizedBox(width: size.width * 0.04),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('hello@myhraki.com',
                          style: TextStyle(fontWeight: FontWeight.w500)),
                      Text('Averages Response Time -24hrs',
                          style: TextStyle(color: grey)),
                    ],
                  ),
                ],
              ),
              const Divider(),
              SizedBox(height: size.height * 0.02),
              Row(
                children: [
                  Image.asset('assets/images/whatsapp.png',
                      width: size.width * 0.07, height: size.height * 0.08),
                  SizedBox(width: size.width * 0.02),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Whatsapp',
                          style: TextStyle(fontWeight: FontWeight.w500)),
                      Text('Averages Response Time -3mits',
                          style: TextStyle(color: grey)),
                    ],
                  ),
                ],
              ),
              const Divider(),
              SizedBox(height: size.height * 0.03),
              TextFormField(
                // controller: nameNumberController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                  ),
                  hintText: 'Name',
                ),
              ),
              SizedBox(height: size.height * 0.02),
              TextFormField(
                // controller: nameNumberController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                  ),
                  hintText: 'Email Id',
                ),
              ),
              SizedBox(height: size.height * 0.02),
              // TextFormField(
              //   // controller: nameNumberController,
              //   decoration: const InputDecoration(
              //     border: OutlineInputBorder(
              //       borderRadius: BorderRadius.all(Radius.circular(15)),
              //     ),
              //     hintText: 'Type your query here....',
              //   ),
              // ),
              TextFormField(
                // controller: nameNumberController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                  ),
                  hintText: ' Type your query here....',
                  contentPadding: EdgeInsets.symmetric(
                      vertical: 20.0), 
                ),
                minLines: 3, 
                maxLines: 5, 
              ),

              SizedBox(height: size.height * 0.04),
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
                          child: Text('SUBMIT',
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
