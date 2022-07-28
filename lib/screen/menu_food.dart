import 'package:flutter/material.dart';

import '../model/foods_model.dart';
import '../services/foods_service.dart';
import 'details_screen.dart';
import 'home2.dart';

class MenuFood extends StatefulWidget {
  final String title;
  final String type;
  final String? name;
  final String? lastName;
  final String? avatar;
  const MenuFood(
      {Key? key,
      required this.title,
      required this.name,
      required this.lastName,
      required this.avatar,
      required this.type})
      : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _MenuFoodState createState() => _MenuFoodState();
}

class _MenuFoodState extends State<MenuFood> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: const Color.fromARGB(255, 255, 255, 255),
          appBar: AppBar(
            backgroundColor: const Color.fromARGB(255, 255, 255, 255),
            leading: IconButton(
              icon: const Icon(Icons.arrow_back,
                  color: const Color.fromARGB(255, 0, 0, 0)),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Home2(
                      name: widget.name,
                      lastName: widget.lastName,
                      avatar: widget.avatar,
                    ),
                  ),
                );
              },
            ),
            title: Text(
              widget.title,
              style: const TextStyle(color: Colors.black),
            ),
          ),
          body: Column(
            children: <Widget>[
              FutureBuilder<FoodsModel>(
                future: foodsService(widget.type),
                builder: (context, AsyncSnapshot snapshot) {
                  if (snapshot.connectionState == ConnectionState.done) {
                    FoodsModel response = snapshot.data;

                    return Column(
                      children: <Widget>[
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.7,
                          child: ListView.builder(
                            itemCount: response.data.length,
                            itemBuilder: (context, index) {
                              return SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.2,
                                child: Card(
                                  child: ListTile(
                                    title: Text(response.data[index].foodName),
                                    subtitle: Text(
                                        "ราคา ${response.data[index].foodPrice} บาท"),
                                    trailing: RawMaterialButton(
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => DetailsScreen(
                                              title:
                                                  response.data[index].foodName,
                                              name: widget.name,
                                              lastName: widget.lastName,
                                              avatar: widget.avatar,
                                              type: widget.type,
                                            ),
                                          ),
                                        );
                                      },
                                      elevation: 2.0,
                                      fillColor: Colors.white,
                                      padding: const EdgeInsets.all(0.0),
                                      shape: const CircleBorder(),
                                      child: const Icon(
                                        Icons.add,
                                        size: 50,
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    );
                  } else {
                    return const LinearProgressIndicator();
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
