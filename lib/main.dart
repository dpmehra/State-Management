import 'package:flutter/material.dart';
import 'package:statemanagement/screens/product_detail_screen.dart';
import 'package:statemanagement/screens/product_overview_screen.dart';
import './providers/products.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Here we user the provider to the highest level of the program.
    return ChangeNotifierProvider(
      create: (ctx) => Products(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'MyShop',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: ProductsOverviewScreen(),
        routes: {
          ProductDetailScreen.routeName: (ctx) => ProductDetailScreen()
        },
      ),
    );
  }
}
