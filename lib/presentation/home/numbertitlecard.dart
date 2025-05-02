import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import 'package:netflixproject/core/constants.dart';

import 'package:netflixproject/presentation/widgets/main_title.dart';

class Numbertitlecard extends StatelessWidget {
  final String title;
  final List<String> posterList;
  const Numbertitlecard({super.key, required this.title, required this.posterList});

  @override
  Widget build(BuildContext context) {
    return Column(
      // mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MainTitle(title: title),
        kheight,
        LimitedBox(
          maxHeight: 200,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: posterList.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(5.0),
                child: Mainnumbercard(index: index, imageurl: posterList[index],),
              );
            },
          ),
        ),
      ],
    );
  }
}

class Mainnumbercard extends StatelessWidget {
  final int index;
  final String imageurl;
  const Mainnumbercard({super.key, required this.index, required this.imageurl});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          children: [
            SizedBox(width: 30, height: 200),
            Container(
              width: 130,
              height: 220,
              //color: Colors.red,
              decoration: BoxDecoration(
                borderRadius: radius15,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                    imageurl,
                  ),
                ),
              ),
            ),
          ],
        ),
        Positioned(
          left: 10,
          right: 100,
          bottom: 2,
          child: BorderedText(
            strokeWidth: 5.0,
            strokeColor: Colors.white,
            child: Text(
              '${index + 1}',
              style: TextStyle(
                color: Colors.black,
                decoration: TextDecoration.none,
                decorationColor: Colors.red,

                fontSize: 100,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
