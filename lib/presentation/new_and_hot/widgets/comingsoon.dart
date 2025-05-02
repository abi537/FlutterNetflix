import 'package:flutter/material.dart';
import 'package:netflixproject/core/colors/colors.dart';
import 'package:netflixproject/core/constants.dart';
import 'package:netflixproject/presentation/home/screen_home.dart';
import 'package:netflixproject/presentation/widgets/videowidgets.dart';

class ComingSoonwidgets extends StatelessWidget {
  final String id;
  final String month;
  final String day;
  final String posterPath;
  final String movieName;
  final String descriptions;
  const ComingSoonwidgets({super.key, required this.id, required this.month, required this.day, required this.posterPath, required this.movieName, required this.descriptions});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    if(month.isEmpty ||day.isEmpty){
      print('emptyyyyyyyyyyyyyy');//true
    }else{
      print('goooddd');
    }
    return Row(
      children: [
        SizedBox(
          width: 50,
          height: 450,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                month,
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  color: kgreycolor,
                ),
              ),
              Text(
                day,
                style: TextStyle(
                  letterSpacing: 4,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          width: size.width - 50,
          height: 450,
          // color: kwhite,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Videowidget(url: posterPath,),
              Row(
                //
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(
                      movieName,
                      maxLines: 1,
                      //nokkanam
                      overflow: TextOverflow.clip,
                      style: TextStyle(
                        fontSize: 18,
                       // fontSize: 40,
                       // letterSpacing: -5,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Spacer(),
                  Row(
                    children: [
                      CustombuttonWidgets(
                        title: "Remind Me",
                        icon: Icons.all_out_sharp,
                        iconsize: 23,
                        textsize: 14,
                      ),
                      kwidth,
                      CustombuttonWidgets(
                        title: "Info",
                        icon: Icons.info,
                        iconsize: 23,
                        textsize: 13,
                      ),
                      kwidth,
                    ],
                  ),
                ],
              ),
              kheight,
              Text("Coming on $day $month"),
              kheight,
              Text(
                movieName,
                maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  color: kwhite,
                ),
              ),
              kheight,
              Text(
                descriptions,
                maxLines: 4,
                // "Landing the lead in the school musical is a dream come true for jodi,until yhe pressure send her confidence--and her relashionship--into a tailspin",
                style: TextStyle(
                  fontSize: 14,
                  //fontWeight: FontWeight.bold,
                  color: kgreycolor,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
