// ignore_for_file: prefer_const_constructors


import 'package:flutter/material.dart';
import 'package:travel_app/navbar/Men.dart';

import 'package:travel_app/screens/cart.dart';

import 'package:travel_app/screens/orders.dart';

import 'package:travel_app/screens/user.dart';


class MenNavi extends StatefulWidget {
  const MenNavi({super.key});

  @override
  State<MenNavi> createState() => _MenNaviState();
}

class _MenNaviState extends State<MenNavi> {
  int _currentSelectIndex = 0;
  final _pages = [
  Men(),
 Orders() ,
 cart(price: '', text: '',),
  user(),
   ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentSelectIndex],
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Color.fromARGB(255, 255, 153, 0),
          unselectedItemColor: Colors.black,
          currentIndex: _currentSelectIndex,
          onTap: (newindex) {
            setState(() {
              _currentSelectIndex = newindex;
            });
          },
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined), label: 'home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.border_outer_rounded), label: 'orders'),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart_checkout_outlined),
                label: 'cart'),
            BottomNavigationBarItem(icon: Icon(Icons.menu), label: 'details'),
          ]),
    );
  }
}
