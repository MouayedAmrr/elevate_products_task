import 'package:elevate_task/providers/products_provider.dart';
import 'package:elevate_task/screens/products_list_view.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (_) => ProductProvider()..loadProducts(),
    child: MyApp(),
  ),);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter products task',
      home: ProductsListView(),
    );
  }
}

