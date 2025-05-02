import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflixproject/application/search/search_bloc.dart';
import 'package:netflixproject/core/constants.dart';
import 'package:netflixproject/domain/core/debounce.dart';
import 'package:netflixproject/domain/search/model/searchresp/search-service.dart';
import 'package:netflixproject/presentation/search/search_idle.dart';
import 'package:netflixproject/presentation/search/searchresult.dart';

class ScreenSearch extends StatelessWidget {
  final _debouncer = Debouncer(milliseconds: 500);
  ScreenSearch({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      BlocProvider.of<SearchBloc>(context).add(Initialize());
    });
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CupertinoSearchTextField(
                backgroundColor: Color.fromARGB(255, 85, 84, 84),
                prefixIcon: Icon(
                  CupertinoIcons.search,
                  color: Color.fromARGB(255, 177, 176, 176),
                ),
                suffixIcon: Icon(
                  CupertinoIcons.xmark_circle_fill,
                  color: Color.fromARGB(255, 177, 176, 176),
                ),
                style: TextStyle(color: Colors.white),
                onChanged: (value) {
                  //call cheyyollu
                  if (value.isEmpty) {
                    return;
                  }
                  _debouncer.run(() {
                    BlocProvider.of<SearchBloc>(
                      context,
                    ).add(SearchMovie(movieQuery: value));
                  });
                },
              ),
              kheight,
              Expanded(
                child: BlocBuilder<SearchBloc, SearchState>(
                  builder: (context, state) {
                    if (state.searchresultList.isEmpty) {
                      return Expanded(child: SearchIdle());
                    } else {
                      return Expanded(child: Searchresult());
                    }
                  },
                ),
              ),
              // Expanded(child: Searchresult()),
            ],
          ),
        ),
      ),
    );
  }
}
