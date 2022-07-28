import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class StarScreen extends StatefulWidget {
  const StarScreen({Key? key}) : super(key: key);

  @override
  _StarScreenState createState() => _StarScreenState();
}

class _StarScreenState extends State<StarScreen> {
  double rating = 0;

  @override
  Widget build(BuildContext context) => Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Rating: $rating',
                style: const TextStyle(fontSize: 40),
              ),
              const SizedBox(
                height: 32,
              ),
              const SizedBox(height: 32),
              RatingBar.builder(
                maxRating: 1,
                itemSize: 46,
                itemPadding: const EdgeInsets.symmetric(horizontal: 4),
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
