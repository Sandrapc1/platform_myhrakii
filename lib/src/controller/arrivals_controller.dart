// ignore_for_file: avoid_print

import 'dart:convert';
import 'package:get/get.dart';
import 'package:platform_myhrakii/src/model/arrivals_model.dart';
import 'package:http/http.dart' as http;

class ArrivalController extends GetxController {
  late RxInt currentIndex = 0.obs;
  RxList<NewArrivalModel> arrivals = <NewArrivalModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    fetchProduct();
  }

  void fetchProduct() async {
    try {
      final response = await http.get(Uri.parse(
          'https://dev-api.myhraki.com/web/productgen/api/v1/search?PageNumber=0&PageSize=10'));

      if (response.statusCode == 200) {
        final Map<String, dynamic> data = json.decode(response.body);
        // print('API Response: $data');

        if (data.containsKey('result')) {
          final List<dynamic>? resultData = data['result'];

          if (resultData != null) {
            List<NewArrivalModel> newArrivals = resultData
                .cast<Map<String, dynamic>>()
                .map((map) {
                  var model = NewArrivalModel.fromJson(map);
                  print('Parsed Model: $model');
                  return model;
                })
                .toList();

            arrivals.assignAll(newArrivals);
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

// // ignore_for_file: avoid_print


// class ArrivalController extends GetxController {
//   late RxInt currentIndex = 0.obs;
//   RxList<NewArrivalModel> arrivals = <NewArrivalModel>[].obs;


//   void fetchProduct() async {
//   try {
//     final response = await http.get(Uri.parse(
//         'https://dev-api.myhraki.com/web/productgen/api/v1/search?PageNumber=0&PageSize=10'));

//     if (response.statusCode == 200) {
// final Map<String, dynamic>? data = json.decode(response.body);
// print('API Response: $data');
      
//      if (data != null) {
//     final List<dynamic>? resultData = data['result'];

//         if (resultData != null) {
//           List<NewArrivalModel> newArrivals = resultData
//               .cast<Map<String, dynamic>>()
//               .map((map) => NewArrivalModel.fromJson(map)) 
//               .toList();

//           arrivals.assignAll(newArrivals);
//         } else {
//           print('Error fetching products: Results data is null.');
//         }
//       } else {
//         print('Error fetching products: Results key not found.');
//       }
//     } else {
//       throw Exception(
//           'Failed to load products. Status code: ${response.statusCode}');
//     }
//   } catch (e) {
//     print('Error fetching products: $e');
//   }
// }


  // void fetchProduct() async {
  //   try {
  //     final response = await http.get(Uri.parse(
  //         'https://dev-api.myhraki.com/web/productgen/api/v1/search?PageNumber=0&PageSize=10'));

  //     if (response.statusCode == 200) {
  //       final Map<String, dynamic> data=json.decode(response.body);
  //       final List<dynamic> resultData=data['results'];
  //       arrivals.assignAll(resultData.cast<Map<String,dynamic>>());
 
  //     } else {
  //       throw Exception(
  //           'Failed to load products. Status code: ${response.statusCode}');
  //     }
  //   } catch (e) {
  //     print('Error fetching products: $e');
  //   }
  // }
// }







      //  var responseData = json.decode(response.body);
      //   if (responseData['result'] != '') {
      //     List<dynamic> data = responseData['result'];
      //     print('Data: ${data}');
      //     List<NewArrivalModel> newArrivals =
      //         data.map((item) => NewArrivalModel.fromJson(item)).toList();
      //     arrivals.assignAll(newArrivals);
      //   } else {
      //     throw Exception('Result is null or not in the expected format');
      //   }