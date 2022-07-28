import 'package:flutter/material.dart';

import '../model/foods_model.dart';
import '../services/foods_service.dart';
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
          backgroundColor: Colors.teal,
          appBar: AppBar(
            leading: IconButton(
              icon: const Icon(Icons.arrow_back),
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
            backgroundColor: Colors.teal,
          ),
          body: Column(
            children: <Widget>[
              FutureBuilder<FoodsService>(
                future: foodsService(widget.type),
                builder: (context, AsyncSnapshot snapshot) {
                  if (snapshot.connectionState == ConnectionState.done) {
                    FoodsService foodsService = snapshot.data;
                    return ListView.builder(
                      itemCount: foodsService.data.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          leading: Image.asset(
                            foodsService.type == "T0001"
                                ? "assets/images/joke.jpg"
                                : "assets/images/joke.jpg",
                            width: 100,
                            height: 100,
                          ),
                          title: Text(foodsService.data[index].foodName),
                          subtitle: Text(
                              "ราคา ${foodsService.data[index].foodPrice} บาท"),
                          onTap: () {
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //     builder: (context) =>
                            //         FoodDetail(foodsService.foods[index]),
                            //   ),
                            // );
                          },
                        );
                      },
                    );
                    // return Row(
                    //   children: <Widget>[
                    //     Padding(
                    //       padding: const EdgeInsetsDirectional.fromSTEB(
                    //           15, 10, 0, 0),
                    //       child: Image.asset(
                    //         "assets/images/joke.jpg",
                    //         width: 100,
                    //         height: 100,
                    //         fit: BoxFit.cover,
                    //       ),
                    //     ),
                    //     Column(
                    //       mainAxisSize: MainAxisSize.max,
                    //       children: const [
                    //         Padding(
                    //           padding:
                    //               EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                    //           child: Text(
                    //             'โจ๊กทะเลต้มยำหม้อดิน',
                    //             style: TextStyle(
                    //               fontSize: 20.0,
                    //               fontFamily: 'SpartanMB-Black',
                    //             ),
                    //           ),
                    //         ),
                    //         Padding(
                    //           padding:
                    //               EdgeInsetsDirectional.fromSTEB(20, 10, 0, 0),
                    //           child: Text(
                    //             'ราคา 59 บาท',
                    //             style: TextStyle(
                    //               fontSize: 20.0,
                    //               fontFamily: 'SpartanMB-Black',
                    //             ),
                    //           ),
                    //         ),
                    //       ],
                    //     ),
                    //     Column(
                    //       mainAxisSize: MainAxisSize.max,
                    //       children: const [
                    //         Padding(
                    //           padding:
                    //               EdgeInsetsDirectional.fromSTEB(25, 10, 10, 0),
                    //           child: Icon(
                    //             Icons.add_circle_outline,
                    //             color: Colors.black,
                    //             size: 35,
                    //           ),
                    //         ),
                    //       ],
                    //     ),
                    //   ],
                    // );
                  } else {
                    return Container();
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
