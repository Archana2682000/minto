import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart';
import 'package:untitled10/Registerpage.dart';
import 'package:untitled10/product.dart';
import 'package:untitled10/resto.dart';

import 'connection.dart';

class Login1 extends StatefulWidget {
  const Login1({Key? key}) : super(key: key);

  @override
  State<Login1> createState() => _Login1State();
}

class _Login1State extends State<Login1> {
  var username = TextEditingController();
  var password = TextEditingController();

  Future<void> postData() async {
    var data = {
      "username": username.text,
      "password": password.text,
    };
    var response =
        await post(Uri.parse('http:// 192.168.29.221/achu/api'), body: data);
    var res = jsonDecode(response.body);
    print(res);
    if (response.statusCode == 200) {
      if (res['message'] == 'User Successfully LoggedIn') {
        if (res['type'] == 'user') {
          Fluttertoast.showToast(msg: 'Successfully Login...');
          Navigator.push(context, MaterialPageRoute(
            builder: (context) {
              return Product();
            },
          ));
        }
      } else {
        Fluttertoast.showToast(msg: 'Invalid username or password');
      }
    } else {
      Fluttertoast.showToast(msg: 'Something went wrong!');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("LOGIN"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("assets/image11.gif"),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextField(
                controller: username,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  labelText: "User name",
                  hintText: "Enter your user name",
                ),
                keyboardType: TextInputType.number,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextField(
                controller: password,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  labelText: "Password",
                  hintText: "Enter your password",
                ),
                obscureText: true,
                keyboardType: TextInputType.number,
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Resto()),
                  );
                },
                child: Text("Login")),
            TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Register()));
                },
                child: Text("Don't have an account Register Here!")),
          ],
        ),
      ),
    );
  }
}
