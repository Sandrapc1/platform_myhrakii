// ignore_for_file: avoid_print

import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:get/get.dart';
import '../model/craft_tale_model.dart';

class CraftTaleController extends GetxController {
  late RxInt currentIndex = 0.obs;
  RxList<CraftTaleModel> craftTale = <CraftTaleModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    fetchProduct();
  }

  void fetchProduct() async {
    try {
      final response = await http.get(Uri.parse(
          'https://dev-api.myhraki.com/web/facts/api/v1/GetAllCFacts'));

      if (response.statusCode == 200) {
        final Map<String, dynamic> data = json.decode(response.body);
        // print('API Response: $data');

        if (data.containsKey('result')) {
          final List<dynamic>? resultData = data['result'];

          if (resultData != null) {
            List<CraftTaleModel> craftData = resultData
                .cast<Map<String, dynamic>>()
                .map((map) {
                  var model = CraftTaleModel.fromJson(map);
                  print('Parsed Model: $model');
                  return model;
                })
                .toList();

            craftTale.assignAll(craftData);
          } else {
            print('Error fetching products: Results data is null.');
          }
        } else {
          print('Error fetching products: Results key not found.');
        }
      } else {
        throw Exception(
            'Failed to load products. Status code: ${response.statusCode}');
      }
    } catch (e) {
      print('Error fetching products: $e');
    }
  }
}




// import 'dart:convert';

// import 'package:get/get.dart';
// import 'package:http/http.dart' as http;
// import '../model/craft_tale_model.dart';

// class CraftController extends GetxController {
//   final RxList<CraftTaleModel> craftTaleList = <CraftTaleModel>[].obs;

// Future<void> fetchData() async {
//   try {
//     final response = await http.get(Uri.parse('https://dev-api.myhraki.com/web/facts/api/v1/GetAllCFacts'));

//     if (response.statusCode == 200) {
//       final Map<String, dynamic> responseBody = json.decode(response.body);

//       if (responseBody.containsKey('result') && responseBody['result'] != null) {
//         final List<dynamic> data = responseBody['result'];
//         print('display the data:$data');

//         // craftTaleList.clear();

//         for (var item in data) {
//           craftTaleList.add(CraftTaleModel.fromJson(item));
//         }
//         print('data:$craftTaleList');
//       } else {
//         print('Error: Result key is null or not present');
//       }
//     } else {
//       print('Error: ${response.statusCode}');
//     }
//   } catch (error) {
//     print('Exception: $error');
//   }
// }


// }
