// ignore_for_file: prefer_const_constructors, camel_case_types, use_key_in_widget_constructors, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:travel_app/function/function.dart';
import 'package:travel_app/model/model.dart';
import 'package:travel_app/orders/editorders.dart';

class Orders extends StatefulWidget {
  const Orders({Key? key});

  @override
  State<Orders> createState() => _OrdersState();
}

class _OrdersState extends State<Orders> {
  String search = '';
  List<CoustmerDetils> searchedList = [];

  void loadCoustmer() async {
    final allCoustmer = await getAllCoustmer();

    setState(() {
      searchedList = allCoustmer;
    });
  }

  @override
  void initState() {
    super.initState();
    loadCoustmer();
  }

  void searchList() {
    setState(() {
      searchedList = coustmerlistnotifier.value
          .where(
              (Shoe) => Shoe.name.toLowerCase().contains(search.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
        centerTitle: true,
        title: Text(
          "My Orders",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        backgroundColor: Color.fromARGB(255, 243, 147, 3),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextField(
              onChanged: (value) {
                setState(() {
                  search = value;
                  searchList();
                });
              },
              decoration: InputDecoration(
                hintText: 'Enter customer name',
                suffixIcon: Icon(Icons.mic),
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
          Expanded(
            child: ValueListenableBuilder(
              valueListenable: coustmerlistnotifier,
              builder: (BuildContext ctx, List<CoustmerDetils> coustmerlist,
                  Widget? child) {
                return ListView.separated(
                  itemBuilder: (ctx, index) {
                    final data = coustmerlist[index];
                    return ListTile(
                      title: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(data.name),
                          Text(data.number),
                          Text(data.address),
                          Text(data.pincode),
                          Text(data.state),
                          Text(data.city),
                        ],
                      ),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(
                            onPressed: () {
                              deleteCoustmer(index);
                              loadCoustmer();
                            },
                            icon: Icon(Icons.delete),
                            style: ButtonStyle(
                              iconColor: MaterialStatePropertyAll(Colors.red),
                            ),
                          ),
                          IconButton(
                            onPressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                    builder: (context) => editorders(
                                          index: index,
                                          name: data.name,
                                          number: data.number,
                                          adress: data.address,
                                          pincode: data.pincode,
                                          state: data.state,
                                          city: data.state,
                                        )),
                              );
                            },
                            icon: Icon(Icons.edit),
                            style: ButtonStyle(
                              iconColor: MaterialStatePropertyAll(Colors.red),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                  separatorBuilder: (ctx, index) {
                    return Divider();
                  },
                  itemCount: coustmerlist.length,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
