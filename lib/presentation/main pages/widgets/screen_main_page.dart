import 'package:flutter/material.dart';
import 'package:netflixproject/core/colors/colors.dart';
import 'package:netflixproject/presentation/downloads/widgets/screen_downloads.dart';
import 'package:netflixproject/presentation/fast_laugh/screen_fast_laught.dart';
import 'package:netflixproject/presentation/home/screen_home.dart';
import 'package:netflixproject/presentation/main%20pages/widgets/bottom_nav.dart';
import 'package:netflixproject/presentation/new_and_hot/screen_new_and_hot.dart';
import 'package:netflixproject/presentation/search/screen_search.dart';

class ScreenMainPage extends StatelessWidget {
  ScreenMainPage({super.key});
  final _pages = [
    ScreenHome(),
    ScreenNewAndHot(),
    ScreenFastLaught(),
    ScreenSearch(),
    ScreenDownloads(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColour,
      body: ValueListenableBuilder(
        valueListenable: indexchangeNotifier,
        builder: (context, value, child) {
          return _pages[value];
        },
      ),
      bottomNavigationBar: BottomNav(),
    );
  }
}
