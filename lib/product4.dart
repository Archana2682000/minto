import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'order.dart';

class Product4 extends StatefulWidget {
  const Product4({super.key});

  @override
  State<Product4> createState() => _Product4State();
}

class _Product4State extends State<Product4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FAVOURIT FOOD"),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Card(
            elevation: 10,
            child: Column(
              children: <Widget>[
                Image.asset("assets/resto4.jpg"),
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
                    "Vegetarian chili is extremely good for you. It's packed with both fiber and protein and made with so many veggies. This recipe has 13g protein per serving and a whopping 19g fiber per serving, which makes it a healthy lunch or dinner idea for any day of the week.")),
          ),
          ListTile(
            title: Text("PRICE STARTING  :   150 (single)"),
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
