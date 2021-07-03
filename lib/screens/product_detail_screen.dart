import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:statemanagement/providers/products.dart';

class ProductDetailScreen extends StatelessWidget {
  // //const ({ Key? key }) : super(key: key);
  // final String title;

  // ProductDetailScreen(this.title);
  static const routeName = '/product-detail';

  @override
  Widget build(BuildContext context) {
    final productId = ModalRoute.of(context).settings.arguments as String;

    final loadedProduct = Provider.of<Products>(context)
        .items
        .firstWhere((prod) => prod.id == productId);
    return Scaffold(
      appBar: AppBar(
        title: Text(loadedProduct.title),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              // Text(loadedProduct.id),
              Image.network(
                loadedProduct.imageUrl,
                fit: BoxFit.cover,
              ),
              SizedBox(
                height: 10,
              ),
              Text(loadedProduct.description),
              SizedBox(
                height: 10,
              ),
              Text(loadedProduct.price.toString()),
              SizedBox(
                height: 10,
              ),
            ],
          ),
          // Text(loadedProduct.imageUrl),
        ),
      ),
    );
  }
}
