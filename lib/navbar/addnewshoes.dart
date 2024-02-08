// ignore_for_file: prefer_const_constructors, no_leading_underscores_for_local_identifiers, sort_child_properties_last

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import 'package:travel_app/function/shoefunction.dart';

import 'package:travel_app/model/shoemodel.dart';
import 'package:travel_app/screens/mainscreen.dart';


class Addshoes extends StatefulWidget {
  Addshoes({Key? key});

  @override
  State<Addshoes> createState() => _AddshoesState();
}

class _AddshoesState extends State<Addshoes> {
  final _namecontroller = TextEditingController();
  final _pricecontoller = TextEditingController();
  File? _selectedimage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => mainscreen()));
            },
            icon: Icon(Icons.arrow_back)),
      ),
      body:   Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 150,
            backgroundImage: _selectedimage != null
                ? FileImage(_selectedimage!)
                : AssetImage("assets/OIP (3).jpg") as ImageProvider,
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            color: Colors.orange,
            child: ElevatedButton(
              onPressed: () {
                _pickImageFromGallery();
              },
              child: Text(
                "Gallery",
                style: TextStyle(color: Colors.white),
              ),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.orange),
              ),
            ),
          ),
          TextFormField(
            controller: _namecontroller,
            decoration: InputDecoration(
              filled: true,
              fillColor: Color.fromARGB(255, 246, 242, 242),
              hintText: "name",
              contentPadding: EdgeInsets.all(10),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(18),
                borderSide: BorderSide(
                  color: Color.fromARGB(255, 129, 126, 125),
                  width: 2,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          TextFormField(
            controller: _pricecontoller,
            maxLength: 5,
            keyboardType: TextInputType.phone,
            decoration: InputDecoration(
              filled: true,
              fillColor: Color.fromARGB(255, 246, 242, 242),
              hintText: "price",
              contentPadding: EdgeInsets.all(10),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(18),
                borderSide: BorderSide(
                  color: Color.fromARGB(255, 129, 126, 125),
                  width: 2,
                ),
              ),
            ),
          ),
          Container(
            color: Colors.orange,
            child: ElevatedButton(
              onPressed: () {
                addbutton();
              },
              child: Text(
                "submit",
                style: TextStyle(color: Colors.white),
              ),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.orange),
              ),
            ),
          ),
        ],
      ),
    );
  }


  void addbutton() async {
    final _name = _namecontroller.text;
    final _price = _pricecontoller.text;
    if (_name.isEmpty || _price.isEmpty) {
      return;
    }
    print('$_name $_price');
    final _shoe = Shoe(text: _name, price: _price, image: _selectedimage!.path);
    addShoe(_shoe);
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => Addshoes()));
  }

  Future _pickImageFromGallery() async {
    final returnImage =
        await ImagePicker().pickImage(source: ImageSource.gallery);

    if (returnImage == null) {
      return;
    }

    setState(() {
      _selectedimage = File(returnImage.path);
    });
  }
}
