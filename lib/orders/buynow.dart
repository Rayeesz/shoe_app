// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, sort_child_properties_last, sized_box_for_whitespace, prefer_const_literals_to_create_immutables, camel_case_types

import 'package:flutter/material.dart';
import 'package:travel_app/orders/adress.dart';

import 'package:travel_app/screens/cart.dart';

class order extends StatelessWidget {
  const order({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        // leading: Icon((Icons.arrow_back)),
      ),
      body: Column(
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                    height: 500, child: Image.asset("assets/OIP (3).jpg")),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20, left: 20),
                      child: Row(
                        children: [
                          Text(
                            "Men walking shoes for men(black)",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10, left: 20),
                          child: Text(
                            "Price:2400",
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 2,
                      color: const Color.fromARGB(255, 128, 127, 127),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10, left: 20),
                          child: Text(
                            "Size-UK/india",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        size(
                          text: "5",
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        size(text: "6"),
                        SizedBox(
                          width: 2,
                        ),
                        size(text: "7"),
                        SizedBox(
                          width: 2,
                        ),
                        size(text: "8"),
                        SizedBox(
                          width: 2,
                        ),
                        size(text: "9"),
                        SizedBox(
                          width: 2,
                        ),
                        size(text: "10"),
                        SizedBox(
                          width: 2,
                        ),
                        size(text: "11")
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Row(
            children: [
              Container(
                color: const Color.fromARGB(255, 242, 240, 237),
                height: 60,
                width: 255,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => cart(
                              price: "Nike",
                              text: '2000',
                            )));
                  },
                  child: Text(
                    "cart",
                    style: TextStyle(color: Colors.black),
                  ),
                  style: ButtonStyle(),
                ),
              ),
              Container(
                color: Colors.yellow,
                height: 50,
                width: 250,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => address()));
                  },
                  child: Text("Buy now"),
                  style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.yellow)),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

class size extends StatelessWidget {
  final String text;
  const size({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, left: 20),
      child: InkWell(
        onTap: () {},
        child: Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(border: Border.all()),
          child: Center(child: Text(text)),
        ),
      ),
    );
  }
}
