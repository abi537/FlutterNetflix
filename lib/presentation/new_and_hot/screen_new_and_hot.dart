import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:netflixproject/application/hot_and_new/hot_and_new_bloc.dart';
import 'package:netflixproject/core/colors/colors.dart';
import 'package:netflixproject/core/string.dart';

import 'package:netflixproject/presentation/new_and_hot/widgets/comingsoon.dart';
import 'package:netflixproject/presentation/new_and_hot/widgets/everyonewatching.dart';

class ScreenNewAndHot extends StatelessWidget {
  const ScreenNewAndHot({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(100),
          child: Padding(
            padding: EdgeInsets.only(bottom: 10),
            child: AppBar(
              elevation: 0,
              //bottomOpacity:0.5 ,
              title: Text(
                'New & Hot',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              actions: [
                Icon(Icons.cast, color: Colors.white, size: 30),
                SizedBox(width: 20),
                Container(width: 30, height: 30, color: Colors.blue),
                SizedBox(width: 20),
              ],
              bottom: TabBar(
                // indicatorColor: Colors.transparent,
                unselectedLabelColor: kwhite,
                //isScrollable: true,
                labelColor: kblackcolor,
                labelStyle: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
                indicator: BoxDecoration(
                  color: kwhite,
                  borderRadius: BorderRadiusDirectional.circular(30),
                ),

                tabs: [
                  Tab(child: Text("🍿 Coming Soon")),
                  Tab(child: Text("👀 Everyone 's watching")),
                ],
              ),
            ),
          ),
        ),
        body: TabBarView(
          children: [ComingSoonList(key: Key('comingSoon'),), EveryonewatchingList(key: Key('EveryOne is watching'),)],
        ),
      ),
    );
  }

  // Widget _buildComingsoon(BuildContext context) {
  //   // Size size=MediaQuery.of(context).size;
  //   return ListView.builder(
  //     itemCount: 10,
  //     itemBuilder: (BuildContext context, index) => ComingSoonwidgets(),
  //   );
  // }

  // Widget _buildEveryoneWatching() {
  //   return ListView.builder(
  //     itemCount: 10,
  //     itemBuilder: (BuildContext context, index) => Everyonewatching(),
  //   );
  // }
}

class ComingSoonList extends StatelessWidget {
  const ComingSoonList({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_){
      BlocProvider.of<HotAndNewBloc>(context).add(LoadDataComingsoon());

    });
    Size size = MediaQuery.of(context).size;
    return RefreshIndicator(
      onRefresh: ()async {
        BlocProvider.of<HotAndNewBloc>(context).add(LoadDataComingsoon());
      },
      child: BlocBuilder<HotAndNewBloc, HotAndNewState>(
        builder: (context, state) {
           if(state.isLoading){
                return Center(child: CircularProgressIndicator(strokeWidth: 2,),);
      
              }else if(state.isError){
                return Center(child: Text('That contain Error'));
              }else if(state.comingSoonList.isEmpty){
                return Center(child: Text('List is Empty'));
              }else{
                // 
                 return ListView.builder(
                 // padding: EdgeInsets.all(20),
            itemCount: state.comingSoonList.length,
            itemBuilder: (BuildContext context, index) {
             final movie= state.comingSoonList[index];
             if(movie.id==null){
              return SizedBox();
             }
              String bmonth;
              String bdate;
             try{
              if(movie.releaseDate==null){
                print('empty releasedate');
              }
              final _date=DateTime.tryParse(movie.releaseDate!);
              print("thedatareeeee1$_date");
               final formatedDate= DateFormat.yMMMMd('en_US').format(_date!);
               print("thedatareeeee2$formatedDate");
               bmonth= formatedDate.split(' ').first.substring(0,3).toUpperCase();
               bdate= movie.releaseDate!.split('-')[1];
               print("thebmonthreeeee1$bmonth");
               print("thedatareeeeefinal$bdate");
              }catch(_){
                bmonth='';
                bdate='';
             }
      
           
             return ComingSoonwidgets(
              id: movie.id.toString(),
               month: bmonth,
                day:bdate ,
                 posterPath: '$imageAppent${movie.posterPath}',
                  movieName: movie.originalTitle??'There is no MovieName ', 
                  descriptions: movie.overview??'No overview available');
            } ,
          );
              }           
      
      
         
        },
      ),
    );
  }
}


class EveryonewatchingList extends StatelessWidget {
  const EveryonewatchingList({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_){
      BlocProvider.of<HotAndNewBloc>(context).add(LoadDataEveryOneisWatching());

    });
    Size size = MediaQuery.of(context).size;
    return RefreshIndicator(
      onRefresh: ()async {
        BlocProvider.of<HotAndNewBloc>(context).add(LoadDataEveryOneisWatching());
      },
      child: BlocBuilder<HotAndNewBloc, HotAndNewState>(
        builder: (context, state) {
           if(state.isLoading){
                return Center(child: CircularProgressIndicator(strokeWidth: 2,),);
      
              }else if(state.isError){
                return Center(child: Text('That contain Error'));
              }else if(state.everyOneisWatching.isEmpty){
                return Center(child: Text('List is Empty'));
              }else{
                // 
                 return ListView.builder(
                  //use padiing whwen needed
            itemCount: state.everyOneisWatching.length,
            itemBuilder: (BuildContext context, index) {
             final tv= state.everyOneisWatching[index];
             if(tv.id==null){
              return SizedBox();
             }
              String bmonth;
              String bdate;
             try{
              final _date=DateTime.tryParse(tv.releaseDate!);
               final formatedDate= DateFormat.yMMMMd('en_US').format(_date!);
               bmonth= formatedDate.split(' ').first.substring(0,3).toUpperCase();
               bdate= tv.releaseDate!.split('-')[1];
              }catch(_){
                bmonth='';
                bdate='';
             }
      
           
             return Everyonewatching(
              posterPath: '$imageAppent${tv.posterPath}',
               movieName: tv.originalName??'No title',
                descriptions: tv.overview??'no description');
            } ,
          );
              }           
      
      
         
        },
      ),
    );
  }
}
