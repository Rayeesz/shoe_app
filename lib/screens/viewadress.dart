// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';

class ViewScreen extends StatelessWidget {
  final String name;
  final String phone;
  final String adress;
  final String pincode;
  final String state;
  final String city;

  const ViewScreen(
      {super.key,
      required this.name,
      required this.phone,
      required this.adress,
      required this.pincode,
      required this.state,
      required this.city});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Container(
          color:Colors.orange,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Card(
                color: Color.fromARGB(179, 241, 235, 235),
                child: Column(
                  children: [
                    Container(
                      height: 60,
                      child: Center(
                        child: Text(
                          "NAME  :  $name",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Card(
                color: Color.fromARGB(179, 237, 236, 236),
                child: Column(
                  children: [
                    Container(
                      height: 70,
                      child: Center(
                        child: Text(
                          "NUMBER  :  $phone",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Card(
                color: Color.fromARGB(179, 241, 235, 235),
                child: Column(
                  children: [
                    Container(
                      height: 60,
                      child: Center(
                        child: Text(
                          "ADRESS  :  $adress",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Card(
                color: Color.fromARGB(179, 239, 230, 230),
                child: Column(
                  children: [
                    Container(
                      height: 60,
                      child: Center(
                        child: Text(
                          "PINCODE  :  $pincode",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Card(
                color: Color.fromARGB(179, 244, 240, 240),
                child: Column(
                  children: [
                    Container(
                      height: 70,
                      child: Center(
                        child: Text(
                          "STATE  :  $state",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Card(
                color: Color.fromARGB(179, 244, 240, 240),
                child: Column(
                  children: [
                    Container(
                      height: 70,
                      child: Center(
                        child: Text(
                          "CITY  :  $city",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
