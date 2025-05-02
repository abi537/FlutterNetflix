import 'package:flutter/material.dart';

class Appbar extends StatelessWidget {
  const Appbar({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    //or you can spacer() intead of mainaxis alaignmaint
    return SafeArea(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 30,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          Row(
            children: [
              Icon(Icons.cast, color: Colors.white, size: 30),
              SizedBox(width: 20),
              Container(width: 30, height: 30, color: Colors.blue),
              SizedBox(width: 20),
            ],
          ),
        ],
      ),
    );
  }
}
