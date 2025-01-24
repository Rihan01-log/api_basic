import 'package:flutter/material.dart';
import 'package:petshop/controller/cartprovider.dart';
import 'package:petshop/controller/productpro.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    super.initState();
    Provider.of<Productpro>(context, listen: false).getProduct();
    Provider.of<Cartprovider>(context, listen: false).getAllCart();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart)),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.favorite))],
        title: Text(
          'Pet Shope',
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Consumer2<Productpro, Cartprovider>(
        builder: (context, value, value2, child) => ListView.builder(
          itemCount: value.product.length,
          itemBuilder: (context, index) {
            if (value.isLoading) {
              Center(
                child: CircularProgressIndicator(
                  color: Colors.amber,
                ),
              );
            }
            if (value.product.isEmpty) {
              Center(
                child: Text('No data available'),
              );
            }

            final product = value.product[index];
            return Card(
              elevation: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.network(product.src ?? 'no'),
                  Text('Price:${product.price ?? 'no'}'),
                  Text('${product.productDescription}'),
                  IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart))
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
