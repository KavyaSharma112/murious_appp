import 'package:flutter/material.dart';

class MuriousText extends StatelessWidget {
  const MuriousText({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Center(
          child: Text(
            "Murious",
            style: TextStyle(
              color: Colors.white,
              fontSize: screenWidth * 0.12,
              fontFamily: 'Murious',
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        Center(
          child: Text(
            "The Three Days Panorama",
            style: TextStyle(
              color: Colors.white,
              fontSize: screenWidth * 0.082,
              fontFamily: 'Murious',
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ],
    );
  }
}