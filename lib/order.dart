import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'package:untitled10/payment1.dart';

class Order extends StatefulWidget {
  const Order({Key? key}) : super(key: key);

  @override
  State<Order> createState() => _OrderState();
}

class _OrderState extends State<Order> {
  var Name = TextEditingController();
  var ContactNumber = TextEditingController();

  var Address = TextEditingController();

  var Amount = TextEditingController();

  void getData() {
    print(Name.text);
    print(ContactNumber.text);

    print(Address);

    print(Amount);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("MY ORDERS"),
          centerTitle: true,
        ),
        body: Center(
            child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextField(
                controller: Name,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  labelText: "user name",
                  hintText: "enter your name",
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextField(
                controller: ContactNumber,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  labelText: "ContactNumber",
                  hintText: "enter your ContactNumber",
                ),
                obscureText: true,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextField(
                controller: Address,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  labelText: "Address",
                  hintText: "enter your address",
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextField(
                controller: Amount,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  labelText: "Amount",
                  hintText: "enter your Amount",
                ),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  getData();
                  Fluttertoast.showToast(
                    msg: "Thank you so much for your order",
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.BOTTOM,
                    timeInSecForIosWeb: 3,
                    backgroundColor: Colors.blue,
                    fontSize: 10,
                  );
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Payments()),
                  );
                },
                child: Text("PLACE ORDER")),
          ],
        )));
  }
}
