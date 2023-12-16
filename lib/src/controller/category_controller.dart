import 'dart:convert';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class CategoriesController extends GetxController {
  final RxList categories = [].obs;
  // var isLoading=true.obs;
  // var hasError=false.obs;

  Future<void> fetchCategories() async {
    final response =await http.get(
      Uri.parse('https://dev-api.myhraki.com/web/productgen/api/v1/category/All'),
    );

    if (response.statusCode == 200) {
      final Map<String, dynamic> data = json.decode(response.body);
      final List<dynamic> resultData = data['result'];
      categories.assignAll(resultData.cast<Map<String, dynamic>>());
    } else {
      throw Exception('Failed to load categories');
    }
  }
}


// import 'dart:convert';
// import 'package:get/get.dart';
// import 'package:http/http.dart' as http;

// class CategoriesController extends GetxController {
//   final RxList<Map<String, dynamic>> categories = <Map<String, dynamic>>[].obs;
//   var isLoading = false.obs;
//   var hasError = true.obs;

//   Future<void> fetchCategories() async {
//     try {
//       // Set isLoading to true before fetching data
//       isLoading(true);

//       final response = await http.get(
//         Uri.parse('https://dev-api.myhraki.com/web/productgen/api/v1/category/All'),
//       );

//       if (response.statusCode == 200) {
//         final Map<String, dynamic> data = json.decode(response.body);
//         final List<dynamic> resultData = data['result'];

//         // Clear existing categories before assigning new data
//         categories.clear();
//         categories.assignAll(resultData.cast<Map<String, dynamic>>());
//       } else {
//         // Set hasError to true if the request fails
//         hasError(true);
//         throw Exception('Failed to load categories');
//       }
//     } catch (e) {
//       // Set hasError to true in case of an exception
//       hasError(true);
//       throw Exception('Failed to load categories: $e');
//     } finally {
//       // Set isLoading to false after data is fetched (whether successful or not)
//       isLoading(false);
//     }
//   }
// }
