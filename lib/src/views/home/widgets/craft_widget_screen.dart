import 'package:flutter/material.dart';
import '../../../../core/colors.dart';
import 'package:get/get.dart';

import '../../../controller/craft_tale_controller.dart';

class CraftWidget extends StatelessWidget {
  final CraftTaleController craftController = Get.put(CraftTaleController());
  CraftWidget({super.key, required Size size});

  @override
  Widget build(BuildContext context) {
    craftController.fetchProduct();
    var size = MediaQuery.of(context).size;

    return Obx(()=>
       Container(
        height: size.height * 0.64,
        width: size.width,
        color: light,
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            children: [
              SizedBox(height: size.height * 0.03),
              const Text(
                'TALE OF CRAFT',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
              ),
              SizedBox(height: size.height * 0.01),
              Expanded(
                child: GridView.builder(
                  scrollDirection: Axis.horizontal,
                  // physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 11,
                    mainAxisSpacing: 11,
                  ),
                  itemCount: craftController.craftTale.length,
                  itemBuilder: (context, index) {
                    final craftProduct = craftController.craftTale[index];
                    return Container(
                      alignment: Alignment.centerLeft,
                      height: size.height,
                      width: size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: light
                      ),
                      // child: Image.network(craftProduct.imageUrl1,
                      // height: size.height,
                      // width: size.width,
                      // fit: BoxFit.fill,
                      // ),
                      child: Container(
                        height: size.height*0.3,
                        width: size.width*0.5,
                       decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: NetworkImage(craftProduct.imageUrl1),
                          fit: BoxFit.cover,
                          colorFilter: ColorFilter.mode(
                            Colors.black.withOpacity(0.3),
                            BlendMode.srcOver,
                          ),
                        ),
                       ),
                        child: Padding(
                          padding: EdgeInsets.only(
                            // left: size.width * 0.01,
                            top: size.height * 0.09,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                craftProduct.blogName,
                                style: const TextStyle(
                                  color: white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                              SizedBox(height: size.height * 0.01),
                              Text(
                                craftProduct.blogArticle,
                                style: const TextStyle(
                                  color:white,
                                  fontSize: 6,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                    
                  },
                ),
              ),
              SizedBox(height: size.height * 0.02),
              Container(
                height: size.height * 0.003,
                width: size.width * 0.3,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  gradient: const LinearGradient(
                    colors: [primary, grey, grey, grey, grey],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                  color: primary,
                ),
              ),
              SizedBox(height: size.height * 0.01),
              TextButton(
                onPressed: () {},
                child: const Text(
                  'VIEW ALL',
                  style: TextStyle(
                    color: primary,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    decoration: TextDecoration.underline,
                    decorationColor: primary,
                    decorationThickness: 1,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
