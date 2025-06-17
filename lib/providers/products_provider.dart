import 'package:elevate_task/models/products_model.dart';
import 'package:elevate_task/services/products_service.dart';
import 'package:flutter/cupertino.dart';

class ProductProvider with ChangeNotifier{
  List<Product> _products = [];

  List<Product> get products =>  _products;

  Future<void> loadProducts() async{
    _products = await ProductService.fetchProducts();
    notifyListeners();
  }
}