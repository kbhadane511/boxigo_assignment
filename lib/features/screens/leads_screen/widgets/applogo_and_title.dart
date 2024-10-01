import 'package:boxio_assignment/constants/image_string.dart';
import 'package:flutter/material.dart';

class CApplogoAndTitle extends StatelessWidget {
  const CApplogoAndTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(0),
      child: Row(
        children: [
          Image(
            image: AssetImage(ImageString.applogo),
            height: 40, // Adjust height as needed
            width: 40, // Adjust width as needed
          ),
          SizedBox(width: 8), // Space between logo and text
          Text(
            'Leads',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ],
      ),
    );
  }
}