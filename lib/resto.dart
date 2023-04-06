import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:untitled10/product.dart';

class Resto extends StatefulWidget {
  const Resto({Key? key}) : super(key: key);

  @override
  State<Resto> createState() => _RestoState();
}

class _RestoState extends State<Resto> {
  final List = [
    'Table1 - Available Seats 6',
    'Table2 - Available Seats 4',
    'Table3 - Available Seats 2',
    'Table4 - Available Seats 8',
    'Table5 - Available Seats 3',
    'Table6 - Available Seats 5',
    'Table7 - Available Seats 6',
    'Table8 - Available Seats 9',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Table Selection"),
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(50.0),
              child: DropdownButtonFormField(
                  hint: Text('Table Reservation:'),
                  items: List.map((e) {
                    return DropdownMenuItem(value: e, child: Text(e));
                  }).toList(),
                  onChanged: (value) {}),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Product()),
                  );
                },
                child: Text("Select")),
          ],
        ),
      ),
    );
  }
}
