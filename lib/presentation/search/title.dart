import 'package:flutter/material.dart';

class SearchtextTile extends StatelessWidget {
  final String title;
  const SearchtextTile({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
    );
  }
}
