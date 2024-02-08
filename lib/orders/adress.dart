// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last, camel_case_types, dead_code

import 'package:flutter/material.dart';
import 'package:travel_app/function/function.dart';
import 'package:travel_app/model/model.dart';
import 'package:travel_app/orders/buynow.dart';
class address extends StatefulWidget {
  address({super.key});

  @override
  State<address> createState() => _addressState();

  final _namecontroller = TextEditingController();
  final _phonecontroller = TextEditingController();
  final _addresscontroller = TextEditingController();
  final _pincodecontroller = TextEditingController();
  final _statecontroller = TextEditingController();
  final _citycontroller = TextEditingController();
  final _formkey = GlobalKey<FormState>();
}

class _addressState extends State<address> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add delivey adress"),
        leading: IconButton(
            onPressed: () {
              Navigator.of(context)
                  .pop(MaterialPageRoute(builder: (context) => order()));
            },
            icon: Icon(Icons.arrow_back)),
        backgroundColor: Color.fromARGB(255, 243, 147, 3),
      ),
      body: SingleChildScrollView(
          child: Form(
        key: widget._formkey,
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "error";
                  } else {
                    return null;
                  }
                },
                controller: widget._namecontroller,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderSide: BorderSide(),
                      borderRadius: BorderRadius.circular(15)),
                  labelText: "Full name(required)",
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextFormField(
                controller: widget._phonecontroller,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "error";
                  } else {
                    return null;
                  }
                },
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderSide: BorderSide(),
                      borderRadius: BorderRadius.circular(15)),
                  labelText: "Phone number(required)",
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "error";
                  } else {
                    return null;
                  }
                },
                controller: widget._addresscontroller,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderSide: BorderSide(),
                      borderRadius: BorderRadius.circular(15)),
                  labelText: "Address(required)",
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "error";
                  } else {
                    return null;
                  }
                },
                controller: widget._pincodecontroller,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderSide: BorderSide(),
                      borderRadius: BorderRadius.circular(15)),
                  labelText: "PINCODE(required)",
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "error";
                  } else {
                    return null;
                  }
                },
                controller: widget._statecontroller,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderSide: BorderSide(),
                      borderRadius: BorderRadius.circular(15)),
                  labelText: "State(required)",
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "error";
                  } else {
                    return null;
                  }
                },
                controller: widget._citycontroller,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderSide: BorderSide(),
                      borderRadius: BorderRadius.circular(15)),
                  labelText: "city(required)",
                ),
              ),
            ),
            Container(
                width: 450,
                height: 50,
                color: Colors.orange,
                child: ElevatedButton(
                  onPressed: () {
                    saveaddress();
                  },
                  child: Text(
                    "Save Address",
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.orange)),
                ))
          ],
        ),
      )),
    );
  }

  saveaddress() async {
    final name =widget._namecontroller.text;
    final number=widget._phonecontroller.text;
    final address=widget._addresscontroller.text;
    final pincode=widget._pincodecontroller.text;
    final state= widget._statecontroller.text;
    final city=widget._citycontroller.text;
    if (name.isEmpty||number.isEmpty||address.isEmpty||pincode.isEmpty||state.isEmpty||state.isEmpty||city.isEmpty) {
      return ;
    } 
      
   
 
    final list=CoustmerDetils(name: name, number: number, address: address, pincode: pincode, state: state, city: city);
      
    addcoustmerDetils(list);
     Navigator.pop(context);

  }

}
