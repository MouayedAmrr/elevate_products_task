import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/products_model.dart';

class ProductService {
  static Future<List<Product>> fetchProducts() async {
    final response = await http.get (Uri.parse('https://fakestoreapi.com/products'));
    if (response.statusCode == 200){
      final List data = jsonDecode(response.body);
      return data.map((e)=> Product.fromJson(e)).toList();
    } else {
      throw Exception('failed to load products');
    }
  }
}