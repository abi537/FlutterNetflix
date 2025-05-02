import 'package:flutter/material.dart';
import 'package:netflixproject/core/colors/colors.dart';
import 'package:netflixproject/core/constants.dart';
import 'package:netflixproject/presentation/home/screen_home.dart';
import 'package:netflixproject/presentation/widgets/videowidgets.dart';

class Everyonewatching extends StatelessWidget {
  final String posterPath;
  final String movieName;
  final String descriptions;
  const Everyonewatching({super.key, required this.posterPath, required this.movieName, required this.descriptions});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        kheight,
        Text(
          movieName,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: kwhite,
          ),
        ),
        kheight,
        Text(
         descriptions,
         maxLines: 4,
         overflow: TextOverflow.ellipsis,
          style: TextStyle(
            fontSize: 14,
            //fontWeight: FontWeight.bold,
            color: kgreycolor,
          ),
        ),
        kheight50,
        Videowidget(url:posterPath ,), 
        kheight,
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CustombuttonWidgets(
              title: "Share",
              icon: Icons.share,
              iconsize: 27,
              textsize: 14,
            ),
            kwidth15,
            CustombuttonWidgets(
              title: "Add",
              icon: Icons.add,
              iconsize: 27,
              textsize: 14,
            ),
            kwidth15,
            CustombuttonWidgets(
              title: "Play",
              icon: Icons.play_arrow,
              iconsize: 29,
              textsize: 14,
            ),
            kwidth15,
          ],
        ),
      ],
    );
  }
}
