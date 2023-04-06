import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'order.dart';

class Product6 extends StatefulWidget {
  const Product6({super.key});

  @override
  State<Product6> createState() => _Product6State();
}

class _Product6State extends State<Product6> {
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
                Image.asset("assets/resto6.jpg"),
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
                    "Barley is a delicious, fibre-rich ancient grain with a mild, slightly nutty taste and chewy texture. It's often used in soups and stews, and it goes well in casseroles and salads too.")),
          ),
          ListTile(
            title: Text("PRICE STARTING  :   389 (single)"),
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
