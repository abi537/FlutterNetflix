import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflixproject/application/search/search_bloc.dart';
import 'package:netflixproject/core/colors/colors.dart';
import 'package:netflixproject/core/constants.dart';
import 'package:netflixproject/core/string.dart';
import 'package:netflixproject/presentation/search/title.dart';

class SearchIdle extends StatelessWidget {
  const SearchIdle({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SearchtextTile(title: 'Top Searches'),
        kheight,
        Expanded(
          child: BlocBuilder<SearchBloc, SearchState>(
            builder: (context, state) {
              if (state.isLoading) {
                return Center(child: CircularProgressIndicator());
              } else if (state.isError) {
                return Center(child: Text('Error while getting data'));
              } else if (state.idleList.isEmpty) {
                return Center(child: Text('List is empty'));
              }
              return ListView.separated(
                //shrinkWrap: true,
                itemBuilder: (ctx, index) {
                  final movie = state.idleList[index];
                  return Topsearchtile(
                    title: movie.title ?? 'no title provided',
                    imageUrl: '$imageAppent${movie.posterPath}',
                  );
                },
                separatorBuilder: (ctx, index) => kheight,
                itemCount: state.idleList.length,
              );
            },
          ),
        ),
      ],
    );
  }
}

class Topsearchtile extends StatelessWidget {
  final String title;
  final String imageUrl;
  const Topsearchtile({super.key, required this.title, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Row(
      children: [
        Container(
          width: screenWidth * 0.3,
          height: 100,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(imageUrl),
            ),
          ),
        ),
        kwidth,
        Expanded(
          child: Text(
            title,
            style: TextStyle(
              color: kwhite,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ),
        CircleAvatar(
          backgroundColor: kwhite,
          radius: 27,
          child: CircleAvatar(
            backgroundColor: kblackcolor,
            radius: 25,
            child: Icon(CupertinoIcons.play_fill, color: kwhite),
          ),
        ),
      ],
    );
  }
}
