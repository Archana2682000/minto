import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'order.dart';

class Product3 extends StatefulWidget {
  const Product3({super.key});

  @override
  State<Product3> createState() => _Product3State();
}

class _Product3State extends State<Product3> {
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
                Image.asset("assets/resto10.jpg"),
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
                    "Vegetable fried rice teams up well with most of the Chinese vegetable dishes like the Sweet and Sour Vegetable, Chinese Fried Paneer in Hot and Sweet Sauce or Tofu in Black Bean Sauce. It makes a sumptuous meal that you will relish till the last bite!")),
          ),
          ListTile(
            title: Text("PRICE STARTING  :   239 (single)"),
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
