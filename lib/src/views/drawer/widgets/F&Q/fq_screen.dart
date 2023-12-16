import 'package:flutter/material.dart';
import 'container_widget.dart';

class FQScreen extends StatelessWidget {
  const FQScreen({super.key});

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
          child: ContainerWidgets(size: size),
        ),
      ),
    );
  }
}
