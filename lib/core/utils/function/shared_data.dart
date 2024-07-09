import 'dart:convert';

import 'package:grocery/features/home/data/models/products_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedData {
  static SharedPreferences? prefs;

  static Future<void> init() async {
    prefs = await SharedPreferences.getInstance();
  }

  static void saveToken({required String token}) async {
    await prefs?.setString('token', token);
  }

  static void saveUserId({required String userId}) async {
    await prefs?.setString('userId', userId);
  }

  static void saveUserImage({required String userImage}) async {
    await prefs?.setString('userImage', userImage);
  }

  static void saveUserPhone({required String userPhone}) async {
    await prefs?.setString('userPhone', userPhone);
  }

  static void saveUserName({required String userName}) async {
    await prefs?.setString('userName', userName);
  }

  static void saveLan({required String lan}) async {
    await prefs?.setString('lan', lan);
  }

  static void saveUserEmail({required String userEmail}) async {
    await prefs?.setString('userEmail', userEmail);
  }

  static void saveUserAge({required int age}) async {
    await prefs?.setInt('userAge', age);
  }

  static void saveFirst({required bool first}) async {
    await prefs?.setBool('first', first);
  }

  static String? getToken() {
    return prefs?.getString('token');
  }

  static String? getUserId() {
    return prefs?.getString('userId');
  }

  static String? getUserImage() {
    return prefs?.getString('userImage');
  }

  static String? getUserPhone() {
    return prefs?.getString('userPhone');
  }

  static String? getUserName() {
    return prefs?.getString('userName');
  }

  static String? getUserLan() {
    return prefs?.getString('lan');
  }

  static String? getUserEmail() {
    return prefs?.getString('userEmail');
  }

  static int? getUserAge() {
    return prefs?.getInt('userAge');
  }

  static bool? getFirst() {
    return prefs?.getBool('first');
  }

  static Future<bool>? removeData(String key) {
    return prefs?.remove(key);
  }

  static Future<void> saveAddToCartData(Product product) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    List<String> productListJson = prefs.getStringList('productList') ?? [];
    // Decode JSON strings to Product objects
    List<Product> productList = productListJson.map((item) => Product.fromJson(jsonDecode(item))).toList();

    // Check if the product with the same ID already exists
    bool productExists = productList.any((existingProduct) => existingProduct.id == product.id);

    if (!productExists) {
      // Add new product to the list
      productList.add(product);

      // Convert Product objects to JSON strings
      productListJson = productList.map((product) => jsonEncode(product.toJson())).toList();
      // Save updated product list to SharedPreferences
      await prefs.setStringList('productList', productListJson);
    }
  }
  static Future<List<Product>?> getAddToCartData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    // Load existing product list from SharedPreferences
    List<String>? productListJson = prefs.getStringList('productList');

    if (productListJson != null) {
      // Decode JSON strings to Product objects
      List<Product> productList = productListJson.map((item) => Product.fromJson(jsonDecode(item))).toList();
      return productList;
    }

    // Return an empty list if no data is found
    return [];
  }

  static Future<void> saveFaveData(Product product) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    List<String> productListJson = prefs.getStringList('productList') ?? [];
    // Decode JSON strings to Product objects
    List<Product> productList = productListJson.map((item) => Product.fromJson(jsonDecode(item))).toList();

    // Check if the product with the same ID already exists
    bool productExists = productList.any((existingProduct) => existingProduct.id == product.id);

    if (!productExists) {
      // Add new product to the list
      productList.add(product);

      // Convert Product objects to JSON strings
      productListJson = productList.map((product) => jsonEncode(product.toJson())).toList();
      // Save updated product list to SharedPreferences
      await prefs.setStringList('productList', productListJson);
    }
  }
  static Future<List<Product>?> getFaveData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    // Load existing product list from SharedPreferences
    List<String>? productListJson = prefs.getStringList('productList');

    if (productListJson != null) {
      // Decode JSON strings to Product objects
      List<Product> productList = productListJson.map((item) => Product.fromJson(jsonDecode(item))).toList();
      return productList;
    }

    // Return an empty list if no data is found
    return [];
  }
  static Future<void> removeFaveData(String productId) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    List<String> productListJson = prefs.getStringList('productList') ?? [];
    // Decode JSON strings to Product objects
    List<Product> productList = productListJson.map((item) => Product.fromJson(jsonDecode(item))).toList();

    // Remove the product with the specified ID
    productList.removeWhere((product) => product.id.toString() == productId);

    // Convert Product objects to JSON strings
    productListJson = productList.map((product) => jsonEncode(product.toJson())).toList();
    // Save updated product list to SharedPreferences
    await prefs.setStringList('productList', productListJson);
  }
}
