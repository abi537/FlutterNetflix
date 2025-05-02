import 'package:flutter/material.dart';
import 'package:netflixproject/core/constants.dart';

class Maincard extends StatelessWidget {
  final String imageUrl;
  const Maincard({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 130,
      height: 220,
      //color: Colors.red,
      decoration: BoxDecoration(
        borderRadius: radius15,
        image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(
            imageUrl,
          ),
        ),
      ),
    );
  }
}
