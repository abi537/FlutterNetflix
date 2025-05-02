import 'package:flutter/material.dart';
import 'package:netflixproject/core/constants.dart';
import 'package:netflixproject/presentation/widgets/main_card.dart';
import 'package:netflixproject/presentation/widgets/main_title.dart';

class Maintitlecard extends StatelessWidget {
  final String title;
  final List<String> posterList;
  const Maintitlecard({super.key, required this.title, required this.posterList});

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
                child: Maincard(imageUrl: posterList[index],),
              );
            },
          ),
        ),
      ],
    );
  }
}
