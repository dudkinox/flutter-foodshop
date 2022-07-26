import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import 'Home.dart';
// import 'package:google_fonts/google_fonts.dart';

class Star extends StatefulWidget {
  @override
  _StarState createState() => _StarState();
}

class _StarState extends State<Star> {
  double rating = 0;

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
              MaterialPageRoute route =
                  MaterialPageRoute(builder: (value) => HomePage());
              Navigator.push(context, route);
            },
            icon: Icon(Icons.arrow_back),
          ),
          title: const Text('คะแนนร้าน', style: TextStyle(color: Colors.black)),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Rating: $rating',
                style: TextStyle(fontSize: 40),
              ),
              const SizedBox(
                height: 32,
              ),
              const SizedBox(height: 32),
              RatingBar.builder(
                maxRating: 1,
                itemSize: 46,
                itemPadding: EdgeInsets.symmetric(horizontal: 4),
                itemBuilder: (context, _) => const Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                updateOnDrag: true,
                onRatingUpdate: (rating) => setState(() {
                  this.rating = rating;
                }),
              ),
            ],
          ),
        ),
      );
}
