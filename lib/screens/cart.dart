// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:travel_app/orders/adress.dart';
import 'package:travel_app/screens/screenhome.dart';

// ignore: must_be_immutable, camel_case_types
class cart extends StatelessWidget {
  String text;
  String price;

  cart({super.key, required this.price, required this.text});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => ScreeenHome()));
            },
            icon: Icon(Icons.arrow_back)),
        centerTitle: true,
        title: Text(
          "Cart",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        backgroundColor: Color.fromARGB(255, 233, 124, 15),
      ),
      body: Column(
        children: [
          Container(
            width: 500,
            height: 600,
            child: Image.asset("assets/nike 3.jpeg"),
          ),
          Text(text),
          Text(price),
          Expanded(
              child: Container(
            color: Colors.orange,
            width: 550,
            height: 250,
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => address()));
              },
              child: Text(
                "place your order",
                style: TextStyle(color: Colors.white),
              ),
              style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.orange)),
            ),
          ))
        ],
      ),
    );
  }
}
