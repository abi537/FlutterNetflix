import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflixproject/application/downloads/downloads_bloc.dart';
import 'package:netflixproject/core/colors/colors.dart';
import 'package:netflixproject/core/constants.dart';
import 'package:netflixproject/core/string.dart';
import 'package:netflixproject/presentation/widgets/appbar.dart';

class ScreenDownloads extends StatelessWidget {
  ScreenDownloads({super.key});
  final List imageList = [
    "https://image.tmdb.org/t/p/w440_and_h660_face/pSgXKPU5h6U89ipF7HBYajvYt7j.jpg",
    "https://image.tmdb.org/t/p/w440_and_h660_face/2uNW4WbgBXL25BAbXGLnLqX71Sw.jpg",
    "https://image.tmdb.org/t/p/w440_and_h660_face/pB8BM7pdSp6B6Ih7QZ4DrQ3PmJK.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    // WidgetsBinding.instance.addPostFrameCallback((_){
    //   BlocProvider.of<DownloadsBloc>(context).add(DownloadsEvent.getDownloadimages());
    // });
    BlocProvider.of<DownloadsBloc>(
      context,
    ).add(DownloadsEvent.getDownloadimages());

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: Appbar(title: "Downloads"),
      ),

      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          children: [
            kheight,
            _smaerDownloads(),
            kheight,
            kheight,

            Text(
              "Introducing Download for you",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            kheight,
            Text(
              "We will downloads a personlised selection of\n movie and shows for you,so there's\n always something to atch your\n device",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: const Color.fromARGB(255, 136, 133, 133),
                fontSize: 16,
                fontWeight: FontWeight.w200,
              ),
            ),
            BlocBuilder<DownloadsBloc, DownloadsState>(
              builder: (context, state) {
                if (state.isLoading) {
                  return Center(child: CircularProgressIndicator());
                } else if (state.downloads == null ||
                    state.downloads!.isEmpty) {
                  return Center(child: Text('No downloads available'));
                }
                return SizedBox(
                  width: size.width,
                  height: size.width - 100,
                  //color: const Color.fromARGB(255, 255, 255, 255),
                  child: Stack(
                    alignment: AlignmentDirectional.center,
                    children: [
                      CircleAvatar(
                        radius: size.width * 0.33,
                        backgroundColor: const Color.fromARGB(
                          255,
                          112,
                          110,
                          110,
                        ),
                      ),
                      Downloadimagewidgets(
                        imageList:
                            '$imageAppent${state.downloads?[0].posterPath}',
                        margin: EdgeInsets.only(left: 150, bottom: 50),
                        angle: 20,
                        height: size.width * 0.4,
                      ),
                      Downloadimagewidgets(
                        imageList:
                            '$imageAppent${state.downloads?[1].posterPath}',
                        margin: EdgeInsets.only(right: 150, bottom: 50),
                        angle: -20,
                        height: size.width * 0.4,
                      ),
                      Downloadimagewidgets(
                        imageList:
                            '$imageAppent${state.downloads?[2].posterPath}',
                        margin: EdgeInsets.only(left: 0, bottom: 30),
                        height: size.width * 0.45,
                      ),
                    ],
                  ),
                );
              },
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: MaterialButton(
                onPressed: () {},
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                color: kbuttonblue,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: Text(
                    'Setup',
                    style: TextStyle(
                      color: kwhite,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ),
            //kheight,
            SizedBox(height: 5),

            Padding(
              padding: const EdgeInsets.only(right: 20, left: 20),
              child: MaterialButton(
                onPressed: () {},

                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                color: kwhite,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: Text(
                    'See what you can download',
                    style: TextStyle(
                      color: kblackcolor,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _smaerDownloads extends StatelessWidget {
  const _smaerDownloads();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(Icons.settings, color: kwhite),
        SizedBox(width: 10),
        Text('Smart Downloads', style: TextStyle(color: kwhite, fontSize: 18)),
      ],
    );
  }
}

class Downloadimagewidgets extends StatelessWidget {
  const Downloadimagewidgets({
    super.key,
    required this.imageList,
    this.angle = 0,
    required this.margin,
    required this.height,
  });

  final String imageList;
  final double angle;
  final EdgeInsets margin;
  final double height;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Transform.rotate(
      angle: angle * pi / 180,
      child: Container(
        margin: margin,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          image: DecorationImage(
            image: NetworkImage(imageList),
            fit: BoxFit.cover,
          ),
        ),

        width: size.width * 0.35,
        // height: size.width *0.4,
        height: height,
      ),
    );
  }
}
