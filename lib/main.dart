
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("My Shopping List"),
          centerTitle: true,
          actions: [
            IconButton(
              icon: Icon(Icons.shopping_cart),
              onPressed: () {
                // Add cart action here
              },
            ),
          ],
        ),
        body: ShoppingItemList(),
      ),
    );
  }
}

class ShoppingItemList extends StatelessWidget {
  final List<ShoppingItem> items = [
    ShoppingItem(name: "Apples", icon: Icons.shopping_basket),
    ShoppingItem(name: "Bananas", icon: Icons.shopping_basket),
    ShoppingItem(name: "Bread", icon: Icons.shopping_basket),
    ShoppingItem(name: "Milk", icon: Icons.shopping_basket),
    ShoppingItem(name: "Eggs", icon: Icons.shopping_basket),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          leading: Icon(items[index].icon),
          title: Text(items[index].name),
          onTap: () {
            // Handle item tap action here
          },
        );
      },
    );
  }
}

class ShoppingItem {
  final String name;
  final IconData icon;

  ShoppingItem({required this.name, required this.icon});

}