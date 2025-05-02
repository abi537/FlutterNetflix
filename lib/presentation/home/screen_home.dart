import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflixproject/application/home/home_bloc.dart';
import 'package:netflixproject/core/colors/colors.dart';
import 'package:netflixproject/core/constants.dart';
import 'package:netflixproject/core/string.dart';
import 'package:netflixproject/presentation/home/background_card.dart';
import 'package:netflixproject/presentation/home/numbertitlecard.dart';

import 'package:netflixproject/presentation/widgets/maintitle_card.dart';

ValueNotifier<bool> scrolNofifyier = ValueNotifier(true);

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_){
      BlocProvider.of<HomeBloc>(context).add(GetHomescreenData());
    });
    return SafeArea(
      child: Scaffold(
        //use list view
        body: ValueListenableBuilder(
          valueListenable: scrolNofifyier,
          builder: (BuildContext context, index, _) {
            return NotificationListener<UserScrollNotification>(
              onNotification: (notification) {
                final ScrollDirection direction = notification.direction;
                print(direction);
                if (direction == ScrollDirection.reverse) {
                  scrolNofifyier.value = false;
                } else if (direction == ScrollDirection.forward) {
                  scrolNofifyier.value = true;
                }

                return true;
              },
              child: Stack(
  children: [
    BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        if(state.isLoading){
          return Center(child: CircularProgressIndicator(strokeWidth: 2,),);
        }else if(state.isError){
          return Center(child: Text('error while Loading', style: TextStyle(color: Colors.white),),);

        } 
        final _relesedPastYear=state.pastYearmovieList.map((e){
          return '$imageAppent${e.posterPath}';
        }).toList();
        _relesedPastYear.shuffle();

      final _Trending=state.trendingmovieList.map((e){
          return '$imageAppent${e.posterPath}';
        }).toList();
        _Trending.shuffle();

         final _tenseDramas=state.tenseDramasmovieList.map((e){
          return '$imageAppent${e.posterPath}';
        }).toList();
        _tenseDramas.shuffle();

        final _southIndianMovies=state.southIndianmovieList.map((e){
          return '$imageAppent${e.posterPath}';
        }).toList();
        _southIndianMovies.shuffle();
        //top10
        final _topTvshows=state.trendingTvList.map((e){
          return '$imageAppent${e.posterPath}';
        }).toList();
        _topTvshows.shuffle();

        return ListView(
          children: [
            BackgroundCard(),
            Maintitlecard(
              title: "Released in the past year",
              posterList: _relesedPastYear,
             // .sublist(0,10),
            ),
            kheight,
            kheight,
            Maintitlecard(
              title: "Trending Now",
              posterList: _Trending
              //.sublist(0,10),
            ),
            Numbertitlecard(title: "Top 10 TV Shows in India Today", posterList:_topTvshows ,),
            Maintitlecard(
              title: "Tense Drama",
              posterList: _tenseDramas
              //.sublist(0,10),
            ),
            Maintitlecard(
              title: "South Indian Cinema",
              posterList: _southIndianMovies
              //.sublist(0,10),
            ),
          ],
        );
      },
    ),
    scrolNofifyier.value ==true
        ? AnimatedContainer(
            duration: Duration(milliseconds: 1000),
            width: double.infinity,
            height: 80,
            color: Colors.transparent,
            child: Column(
              children: [
                Row(
                  children: [
                    Image.network(
                      "https://images.ctfassets.net/4cd45et68cgf/Rx83JoRDMkYNlMC9MKzcB/2b14d5a59fc3937afd3f03191e19502d/Netflix-Symbol.png?w=700&h=456",
                      width: 50,
                      height: 50,
                    ),
                    Spacer(),
                    Icon(Icons.cast, color: Colors.white, size: 30),
                    SizedBox(width: 20),
                    Container(width: 30, height: 30, color: Colors.blue),
                    SizedBox(width: 20),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('TV Shows', style: TextStyle(fontWeight: FontWeight.bold)),
                    Text('Movies', style: TextStyle(fontWeight: FontWeight.bold)),
                    Text('Categories', style: TextStyle(fontWeight: FontWeight.bold)),
                  ],
                ),
              ],
            ),
          )
        : kheight,
  ],
)
            
              // child: Stack(
              //   children: [
              //     BlocBuilder<HomeBloc, HomeState>(
              //       builder: (context, state) {
              //         return ListView(
              //                         // child: Column(
              //                         children: [
              //                           BackgroundCard(),
              //                           Maintitlecard(title: "Released in the past year",
              //                            posterList: [],),
              //                           kheight,
              //                           kheight,
              //                           Maintitlecard(title: "Trending Now", posterList: [],),
              //                           Numbertitlecard(title: "Top 10 TV Shows in India Today"),
              //                           Maintitlecard(title: "Tense Drama", posterList: [],),
              //                           Maintitlecard(title: "South Indian Cinema", posterList: [],),
              //                         ],
              //                       ),
              //                       scrolNofifyier.value == true
              //                           ? AnimatedContainer(
              //                             duration: Duration(milliseconds: 1000),
              //                             child: Container(
              //                               width: double.infinity,
              //                               height: 80,
              //                               color: Colors.transparent,
              //                               child: Column(
              //                                 children: [
              //                                   Row(
              //                                     children: [
              //                                       Image.network(
              //                                         "https://images.ctfassets.net/4cd45et68cgf/Rx83JoRDMkYNlMC9MKzcB/2b14d5a59fc3937afd3f03191e19502d/Netflix-Symbol.png?w=700&h=456",
              //                                         width: 50,
              //                                         height: 50,
              //                                       ),
              //                                       Spacer(),
              //                                       Icon(
              //                                         Icons.cast,
              //                                         color: Colors.white,
              //                                         size: 30,
              //                                       ),
              //                                       SizedBox(width: 20),
              //                                       Container(
              //                                         width: 30,
              //                                         height: 30,
              //                                         color: Colors.blue,
              //                                       ),
              //                                       SizedBox(width: 20),
              //                                     ],
              //                                   ),
              //                                   Row(
              //                                     mainAxisAlignment:
              //                                         MainAxisAlignment.spaceEvenly,
              //                                     children: [
              //                                       Text(
              //                                         'TV Shows',
              //                                         style: TextStyle(
              //                                           fontWeight: FontWeight.bold,
              //                                         ),
              //                                       ),
              //                                       Text(
              //                                         'Movies',
              //                                         style: TextStyle(
              //                                           fontWeight: FontWeight.bold,
              //                                         ),
              //                                       ),
              //                                       Text(
              //                                         'Categories',
              //                                         style: TextStyle(
              //                                           fontWeight: FontWeight.bold,
              //                                         ),
              //                                       ),
              //                                     ],
              //                                   ),
              //                                 ],
              //                               ),
              //                             ),
              //                           )
              //                           : kheight,
              //                     ],
              //                   );
              //       },
              //     ),
            );
          },
        ),
      ),
      //  ),
    );
  }
}

class CustombuttonWidgets extends StatelessWidget {
  const CustombuttonWidgets({
    super.key,
    required this.title,
    required this.icon,
    this.iconsize = 30,
    this.textsize = 20,
  });
  final String title;
  final IconData icon;
  final double iconsize;
  final double textsize;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, color: kwhite, size: iconsize),
        Text(
          title,
          style: TextStyle(fontSize: textsize, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
