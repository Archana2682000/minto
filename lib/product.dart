import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:untitled10/product1.dart';
import 'package:untitled10/product2.dart';
import 'package:untitled10/product3.dart';
import 'package:untitled10/product4.dart';
import 'package:untitled10/product5.dart';
import 'package:untitled10/product6.dart';
import 'package:untitled10/product7.dart';

class Product extends StatefulWidget {
  const Product({Key? key}) : super(key: key);

  @override
  State<Product> createState() => _ProductState();
}

class _ProductState extends State<Product> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MINTO"),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(
                bottom: 30,
              ),
            ),
            Card(
              elevation: 10,
              child: Column(
                children: <Widget>[
                  Image.asset("assets/resto8.jpg"),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(left: 30),
                      ),
                      Text(
                        "Coconut cauliflower",
                        style: TextStyle(color: Colors.black, fontSize: 30),
                      ),
                    ],
                  ),
                ],
              ),
              color: Colors.white,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Product1()),
                  );
                },
                child: Text("MORE DETAILS >>")),
            Padding(
              padding: EdgeInsets.only(
                bottom: 30,
              ),
            ),
            Card(
              elevation: 10,
              color: Colors.white,
              child: Column(
                children: <Widget>[
                  Image.asset("assets/resto9.jpg"),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(left: 30),
                      ),
                      Text(
                        "Broccoli quinoa burgers",
                        style: TextStyle(color: Colors.black, fontSize: 30),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Product2()),
                  );
                },
                child: Text("MORE DETAILS >>")),
            Padding(
              padding: EdgeInsets.only(
                bottom: 30,
              ),
            ),
            Card(
              elevation: 10,
              child: Column(
                children: <Widget>[
                  Image.asset("assets/resto10.jpg"),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(left: 30),
                      ),
                      Text(
                        "Fried rice",
                        style: TextStyle(color: Colors.black, fontSize: 30),
                      ),
                    ],
                  ),
                ],
              ),
              color: Colors.white,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Product3()),
                  );
                },
                child: Text("MORE DETAILS >>")),
            Padding(
              padding: EdgeInsets.only(
                bottom: 30,
              ),
            ),
            Card(
              elevation: 10,
              child: Column(
                children: <Widget>[
                  Image.asset("resto4.jpg"),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(left: 25),
                      ),
                      Text(
                        "Chili con carne",
                        style: TextStyle(color: Colors.black, fontSize: 30),
                      ),
                    ],
                  ),
                ],
              ),
              color: Colors.white,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Product4()),
                  );
                },
                child: Text("MORE DETAILS >>")),
            Padding(
              padding: EdgeInsets.only(
                bottom: 30,
              ),
            ),
            Card(
              elevation: 10,
              child: Column(
                children: <Widget>[
                  Image.asset("assets/resto5.jpg"),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(left: 25),
                      ),
                      Text(
                        "Quinoa tofu bow",
                        style: TextStyle(color: Colors.black, fontSize: 30),
                      ),
                    ],
                  ),
                ],
              ),
              color: Colors.white,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Product5()),
                  );
                },
                child: Text("MORE DETAILS >>")),
            Padding(
              padding: EdgeInsets.only(
                bottom: 30,
              ),
            ),
            Card(
              elevation: 10,
              child: Column(
                children: <Widget>[
                  Image.asset("resto6.jpg"),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(left: 25),
                      ),
                      Text(
                        "Barly porridge",
                        style: TextStyle(color: Colors.black, fontSize: 30),
                      ),
                    ],
                  ),
                ],
              ),
              color: Colors.white,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Product6()),
                  );
                },
                child: Text("MORE DETAILS >>")),
            Padding(
              padding: EdgeInsets.only(
                bottom: 30,
              ),
            ),
            Card(
              elevation: 10,
              child: Column(
                children: <Widget>[
                  Image.asset("resto7.jpg"),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(left: 25),
                      ),
                      Text(
                        "Bruschetta with salad",
                        style: TextStyle(color: Colors.black, fontSize: 30),
                      ),
                    ],
                  ),
                ],
              ),
              color: Colors.white,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Product7()),
                  );
                },
                child: Text("MORE DETAILS >>")),
          ],
        ),
      ),
    );
  }
}
