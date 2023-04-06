import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'order.dart';

class Product7 extends StatefulWidget {
  const Product7({super.key});

  @override
  State<Product7> createState() => _Product7State();
}

class _Product7State extends State<Product7> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FAVOURITE FOOD"),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Card(
            elevation: 10,
            child: Column(
              children: <Widget>[
                Image.asset("assets/resto7.jpg"),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
          ListTile(
            title: SizedBox(
                width: 150,
                height: 150,
                child: Text(
                    "This Caprese Chickpea Salad is full of flavor and bursting with fresh ingredients like avocado, tomato, mozzarella, fresh herbs, and more. This makes a great vegetarian meal option for lunch or dinner thanks to the protein packed chickpeas")),
          ),
          ListTile(
            title: Text("PRICE STARTING  :   99 (single)"),
          ),
          ListTile(
            title: Text("DELIVERY TYPE  :  HOME DELIVERY"),
          ),
          ListTile(
            title: Text("DELIVERY TIME  :  10 AM  TO  11 PM"),
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Order()),
                );
              },
              child: Text("ORDER NOW")),
        ],
      ),
    );
  }
}
