// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors, sort_child_properties_last, must_be_immutable, unnecessary_string_interpolations

import 'package:flutter/material.dart';
import 'package:travel_app/screens/adress.dart';
import 'package:travel_app/widget/screenhome.dart';

class Cart extends StatelessWidget {
  String price;
  String text;
  String imagePath;

  Cart(
      {super.key,
      required this.price,
      required this.text,
      required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => ScreeenHome()));
          },
          icon: Icon(Icons.arrow_back),
        ),
        centerTitle: true,
        title: Text(
          "Cart",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        backgroundColor: Color.fromARGB(255, 233, 124, 15),
      ),
      body: ListView.builder(
        itemCount: 1,
        itemBuilder: (ctx, index) {
          return Padding(
            padding: EdgeInsets.all(30),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(image: AssetImage("$imagePath")

                          //"assets/adidas-samba-og-herren-sneaker-weiss-b75806_4.webp"

                          ),
                    ),
                  ),
                  SizedBox(width: 30),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 50),
                      Text(
                        // data.text,
                        "$text",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        // data.price,
                        "$price",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w200,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              
            ]),
            
          );
        },
      ),
      bottomNavigationBar: Container(
              height: 50,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => Address()));
                },
                child: Text(
                  "Buy Now",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.orange),
                ),
              ),
            ), 
      
    );
  }
}
