import 'package:flutter/material.dart';
import 'package:netflixproject/core/colors/colors.dart';
import 'package:netflixproject/presentation/home/screen_home.dart';

class BackgroundCard extends StatelessWidget {
  const BackgroundCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 500,

          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                "https://image.tmdb.org/t/p/w600_and_h900_bestv2/yYa8Onk9ow7ukcnfp2QWVvjWYel.jpg",
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          //alignment:Alignment.centerLeft ,
          bottom: 0,
          left: 0,
          right: 0,
          top: 440,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustombuttonWidgets(title: "My List", icon: Icons.add),
              _playButton(),
              CustombuttonWidgets(
                title: "Info",
                icon: Icons.info_outline_rounded,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

TextButton _playButton() {
  return TextButton.icon(
    onPressed: () {},
    style: ButtonStyle(
      shape: WidgetStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5), // Rectangle shape
        ),
      ),
      backgroundColor: WidgetStateProperty.all(kwhite),
      padding: WidgetStateProperty.all(
        EdgeInsets.symmetric(horizontal: 3, vertical: 0),
      ),
      // minimumSize: WidgetStateProperty.all(Size(10, 10)),
    ),

    label: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Text(
        'Play',
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: kblackcolor,
        ),
      ),
    ),
    icon: Icon(Icons.play_arrow, size: 35, color: kblackcolor),
  );
}
