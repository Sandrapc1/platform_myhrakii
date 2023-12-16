// ignore_for_file: library_private_types_in_public_api, non_constant_identifier_names
import 'package:flutter/material.dart';
import '../../../../../core/colors.dart';

class DropDownScreen extends StatefulWidget {
  const DropDownScreen({Key? key}) : super(key: key);

  @override
  _DropDownScreenState createState() => _DropDownScreenState();
}

class _DropDownScreenState extends State<DropDownScreen> {
  bool showDescription = false;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'FAQ',
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
              ContainerDescription(size),
              SizedBox(height: size.height * 0.02),
              ContainerDescription(size),
              SizedBox(height: size.height * 0.02),
              ContainerDescription(size),
              SizedBox(height: size.height * 0.02),
              ContainerDescription(size),
              SizedBox(height: size.height * 0.02),
              ContainerDescription(size),
              SizedBox(height: size.height * 0.02),
              ContainerDescription(size),
              SizedBox(height: size.height * 0.02),
            ],
          ),
        ),
      ),
    );
  }

  Container ContainerDescription(Size size) {
    return Container(
              width: size.width,
              decoration: BoxDecoration(
                border: Border.all(color: grey),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListTile(
                    title: const Text(
                      'I am having trouble accessing the site?',
                      style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    onTap: () {
                      setState(() {
                        showDescription = !showDescription;
                      });
                    },
                  ),
                  if (showDescription)
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'You may want to refresh your browser. If you are still experiencing any difficulty accessing the website, please check to make sure your internet connection is working properly.',
                        style: TextStyle(fontSize: 12, color: Colors.grey),
                      ),
                    ),
                ],
              ),
            );
  }
}
