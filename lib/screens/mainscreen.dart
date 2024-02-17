// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, avoid_unnecessary_containers, sort_child_properties_last, camel_case_types, must_be_immutable, non_constant_identifier_names

import 'package:banner_carousel/banner_carousel.dart';

import 'package:flutter/material.dart';
import 'package:travel_app/function/shoefunction.dart';
import 'package:travel_app/function/shoewomen.dart';

import 'package:travel_app/model/shoemodel.dart';
import 'package:travel_app/model/shoewomen.dart';

import 'package:travel_app/screens/women.dart';
import 'package:travel_app/widget/drawer.dart';
import 'package:travel_app/screens/men.dart';

class Mainscreen extends StatelessWidget {
  Mainscreen({super.key});
  List shoes = [
    "assets/nike4.jpeg",
    "assets/new b2.jpeg",
    "assets/adidas5.jpeg",
    "assets/adidas4.jpeg",
    "assets/new b2.jpeg",
    "assets/nike.jpg",
    "assets/OIP (1).jpg",
    " assets/puma1.jpeg"
  ];
  int index = 0;

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
            Container(
                color: Colors.grey,
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
            Row(
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: ValueListenableBuilder(
                        valueListenable: shoedetilsnoti,
                        builder: (BuildContext ctx, List<Shoe> Shoelists,
                            Widget? child) {
                          return Row(
                            children: [
                              Row(
                                children: Shoelists.map((shoe) {
                                  return Ref(
                                    image: shoes[index++],
                                    text: shoe.text,
                                    onpressed: () {
                                      Navigator.of(context)
                                          .push(MaterialPageRoute(
                                        builder: (context) => Men(),
                                      ));
                                    },
                                  );
                                }).toList(),
                              ),
                              Row(
                                children: [
                                  Ref(
                                      image: "assets/OIP (1).jpg",
                                      text: "adidas",
                                      onpressed: () {
                                        Navigator.of(context).push(
                                            MaterialPageRoute(
                                                builder: (context) => Men()));
                                      }),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Ref(
                                      image: "assets/OIP.jpg",
                                      text: "Nike",
                                      onpressed: () {
                                        Navigator.of(context).push(
                                            MaterialPageRoute(
                                                builder: (context) => Men()));
                                      }),
                                  SizedBox(
                                    width: 10,
                                  )
                                ],
                              ),
                            ],
                          );
                        }),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
                color: Colors.grey,
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
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: ValueListenableBuilder(
                    valueListenable: ShoeWomenlist,
                    builder: (BuildContext ctx, List<ShoeWomen> Shoewomenlist,
                        Widget? child) {
                      return Row(
                        children: [
                          Row(
                            children: Shoewomenlist.map((shoe) {
                              return Ref(
                                image: shoes[index++],
                                text: shoe.text,
                                onpressed: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => Women(),
                                  ));
                                },
                              );
                            }).toList(),
                          ),
                          Row(
                            children: [
                              Ref(
                                  image: "assets/OIP (1).jpg",
                                  text: "adidas",
                                  onpressed: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) => Women()));
                                  }),
                              SizedBox(
                                width: 10,
                              ),
                              Ref(
                                  image: "assets/OIP.jpg",
                                  text: "Nike",
                                  onpressed: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) => Women()));
                                  }),
                              SizedBox(
                                width: 10,
                              ),
                              Ref(
                                  image: "assets/puma1.jpeg",
                                  text: "Nike",
                                  onpressed: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) => Women()));
                                  }),
                              SizedBox(
                                width: 10,
                              ),
                            ],
                          ),
                        ],
                      );
                    }),
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
