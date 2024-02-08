// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, avoid_unnecessary_containers, camel_case_types

import 'package:flutter/material.dart';

class women extends StatelessWidget {
  const women({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Brand",
              style: TextStyle(
                fontSize: 25,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              " Hub",
              style: TextStyle(
                fontSize: 25,
                color: Color.fromARGB(255, 255, 153, 0),
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Image.asset("assets/Screenshot 2024-02-01 153340.png"),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40, top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Filter",
                    style: TextStyle(
                        fontSize: 15,
                        fontStyle: FontStyle.italic,
                        color: Color.fromARGB(255, 110, 133, 237)),
                  ),
                  SizedBox(
                    width: 70,
                  ),
                  Text(
                    "Women's Footwear: 300 products",
                    style: TextStyle(
                        fontSize: 15,
                        fontStyle: FontStyle.italic,
                        color: Colors.grey),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 40),
                  child: Ref(
                    onpressed: (){},
                    text: "Nike jordan",
                    price: "price:2400",
                    image: "assets/OIP (3).jpg",
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Ref(
                  text: "adidas samba",
                  price: "price:2900",
                  image: "assets/adidas-samba-og-herren-sneaker-weiss-b75806_4.webp", onpressed: () {  },
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 40),
                  child: Ref(
                    text: "adidas",
                    price: "price:3000",
                    image: "assets/adidas 2.jpeg", onpressed: () {  },
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Ref(
                  text: "Nike",
                  price: "price:2400",
                  image: "assets/nike 2.jpeg", onpressed: () {  },
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 40),
                  child: Ref(
                    text: "Nike",
                    price: "price:3400",
                    image: "assets/nike 3.jpeg", onpressed: () {  },
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Ref(
                  text: "Nike",
                  price: "price:2400",
                  image: "assets/nike4.jpeg", onpressed: () {  },
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 40),
                  child: Ref(
                    text: "NIke",
                    price: "price:1400",
                    image: "assets/nike.jpg", onpressed: () {  },
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Ref(
                  text: "New balance",
                  price: "price:3400",
                  image: "assets/new b1.webp", onpressed: () {  },
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 40),
                  child: Ref(
                    text: "Fila",
                    price: "price:1600",
                    image: "assets/fila 1.jpeg", onpressed: () {  },
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Ref(
                  text: "New balance",
                  price: "price:3600",
                  image: "assets/new b2.jpeg", onpressed: () {  },
                ),
              ],
            ),
           
            
          ],
        ),
      ),
    );
  }
}

class Ref extends StatelessWidget {
  final String text;
  final String image;
  final String price;

  const Ref({
    Key? key,
    required this.image,
    required this.text,
    required this.price, 
    required Null Function() onpressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(onTap: (){},
      child: Row(
        children: [
          Card(
            child: Column(
              children: [
                SizedBox(
                  height: 200,
                  width: 200,
                  child: Image.asset(
                    image,
                    fit: BoxFit.fill,
                  ),
                ),
                Column(
                  children: [
                    Text(
                      text,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(price),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

  