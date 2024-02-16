import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class RatingFeedback extends StatefulWidget {
  const RatingFeedback({Key? key}) : super(key: key);

  @override
  State<RatingFeedback> createState() => _RatingFeedbackState();
}

class _RatingFeedbackState extends State<RatingFeedback> {
  late double ratingApp;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Center(
      child: RatingBar.builder(
        unratedColor: Colors.white,
        initialRating: 0,
        itemCount: 5,
        itemSize: screenWidth *
            0.135, // Set the size of the icons based on screen width
        itemBuilder: (context, index) {
          switch (index) {
            case 0:
              return SizedBox(
                width: screenWidth * 0.06, // Adjust width based on screen width
                height:
                    screenWidth * 0.06, // Adjust height based on screen width
                child: Icon(
                  Icons.sentiment_very_dissatisfied,
                  color: Colors.red,
                ),
              );
            case 1:
              return SizedBox(
                width: screenWidth * 0.06, // Adjust width based on screen width
                height:
                    screenWidth * 0.06, // Adjust height based on screen width
                child: Icon(
                  Icons.sentiment_dissatisfied,
                  color: Colors.redAccent,
                ),
              );
            case 2:
              return SizedBox(
                width: screenWidth * 0.06, // Adjust width based on screen width
                height:
                    screenWidth * 0.06, // Adjust height based on screen width
                child: Icon(
                  Icons.sentiment_neutral,
                  color: Colors.amber,
                ),
              );
            case 3:
              return SizedBox(
                width: screenWidth * 0.06, // Adjust width based on screen width
                height:
                    screenWidth * 0.06, // Adjust height based on screen width
                child: Icon(
                  Icons.sentiment_satisfied,
                  color: Colors.lightGreen,
                ),
              );
            case 4:
              return SizedBox(
                width: screenWidth * 0.06, // Adjust width based on screen width
                height:
                    screenWidth * 0.06, // Adjust height based on screen width
                child: Icon(
                  Icons.sentiment_very_satisfied,
                  color: Colors.green,
                ),
              );
            default:
              throw Exception('Invalid rating index');
          }
        },
        onRatingUpdate: (rating) {
          setState(() {
            ratingApp = rating;
          });
          print(rating);
        },
      ),
    );
  }
}
