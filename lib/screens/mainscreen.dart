// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, avoid_unnecessary_containers, sort_child_properties_last, camel_case_types

import 'package:banner_carousel/banner_carousel.dart';

import 'package:flutter/material.dart';
import 'package:travel_app/navbar/Men.dart';
import 'package:travel_app/navbar/drawer.dart';
import 'package:travel_app/navbar/women.dart';

class mainscreen extends StatelessWidget {
  const mainscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Navbar(),
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
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextField(
                decoration: InputDecoration(
                    hintText: 'search for products',
                    suffixIcon: Icon(Icons.mic),
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide())),
              ),
            ),
            Container(
              child: BannerCarousel(
                banners: [
                  BannerModel(
                      imagePath: "assets/black_friday_web_banner_11.jpg",
                      id: "1"),
                  BannerModel(imagePath: "assets/2534187.jpg", id: "2"),
                  BannerModel(imagePath: "assets/4442831.jpg", id: "3"),
                  BannerModel(imagePath: "assets/4649900.jpg", id: "4"),
                ],
                height: 300,
              ),
            ),
            SizedBox(height: 20),
            Text(
              "New Arrivals",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic),
            ),
            SizedBox(
              height: 10,
            ),
            Container(color: Colors.grey,
            width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Men",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ],
                  ),
                )),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Ref(
                      image: "assets/OIP (1).jpg",
                      text: "adidas",
                      onpressed: () {
                               Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Men()));
                      }),
                  SizedBox(
                    width: 10,
                  ),
                  Ref(image: "assets/OIP.jpg", text: "Nike", onpressed: () {}),
                  SizedBox(
                    width: 10,
                  ),
                  Ref(
                      image: "assets/OIP (2).jpg",
                      text: "New balance",
                      onpressed: () {
                               Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Men()));
                      }),
                  SizedBox(
                    width: 10,
                  ),
                  Ref(
                      image: "assets/OIP (3).jpg",
                      text: "Jordan",
                      onpressed: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Men()));
                      }),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(color: Colors.grey,
            width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Women",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ],
                  ),
                )),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                 children: [
                  Ref(
                      image: "assets/puma2.jpeg",
                      text: "puma",
                      onpressed: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>women()));
                      },),
                  SizedBox(
                    width: 10,
                  ),
                  Ref(image: "assets/adidas5.jpeg", text: "adidas", onpressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>women()));
                  }),
                  SizedBox(
                    width: 10,
                  ),
                  Ref(
                      image: "assets/new b2.jpeg",
                      text: "New balance",
                      onpressed: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>women()));
                      }),
                  SizedBox(
                    width: 10,
                  ),
                  Ref(
                      image: "assets/puma1.jpeg",
                      text: "puma",
                      onpressed: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>women()));
                      }),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: Image.asset('assets/Screenshot 2024-01-31 102318.png'),
            ),
            Container(
              child: Image.asset("assets/Screenshot 2024-01-31 103232.png"),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: Image.asset('assets/Screenshot 2024-01-31 103232.png'),
            ),
            Container(
              child: Image.asset("assets/Screenshot 2024-01-31 104429.png"),
            )
          ],
        ),
      ),
    );
  }
}

class Ref extends StatelessWidget {
  final String text;
  final String image;
   final VoidCallback onpressed;

  

  const Ref({
    Key? key,
    required this.image,
    required this.text,
     required this.onpressed, 
    
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onpressed,
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
