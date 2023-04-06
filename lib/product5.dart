import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'order.dart';

class Product5 extends StatefulWidget {
  const Product5({super.key});

  @override
  State<Product5> createState() => _Product5State();
}

class _Product5State extends State<Product5> {
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
                Image.asset("assets/resto5.jpg"),
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
                    "This Sesame Tofu Quinoa Bowl is made with quinoa, vegetables and fried tofu that's coated in a sesame-soy sauce marinade. It's a filling, plant-based meal that the whole family will enjoy! ")),
          ),
          ListTile(
            title: Text("PRICE STARTING  :   300 (single)"),
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
