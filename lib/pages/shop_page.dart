import 'package:ecommerce_flutter/models/shop.dart';
import 'package:ecommerce_flutter/widgets/my_drawer.dart';
import 'package:ecommerce_flutter/widgets/my_product_tile.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    final products = context.watch<Shop>().shop;

    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.surface,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          foregroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Center(
            child: Text("Shop Page"),
          ),
          actions: [
            IconButton(
              onPressed: () => Navigator.pushNamed(context, "/cart_page"),
              icon: const Icon(Icons.shopping_cart_outlined),
            ),
          ],
        ),
        drawer: const MyDrawer(),
        body: ListView(
          children: [
            //shop title

            const SizedBox(
              height: 25,
            ),
            //shop subtitle
            Center(
              child: Text(
                "Pick from a selected list of premium products",
                style: TextStyle(
                  color: Theme.of(context).colorScheme.inversePrimary,
                ),
              ),
            ),

            //product list
            SizedBox(
              height: 650,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.all(15),
                  itemCount: products.length,
                  itemBuilder: (context, index) {
                    //get each individual product
                    final product = products[index];

                    //return as a product tile UI
                    return MyProductTile(product: product);
                  }),
            ),
          ],
        ));
  }
}
