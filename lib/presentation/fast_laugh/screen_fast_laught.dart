import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:netflixproject/application/fast_laught/fast_laugh_bloc.dart';
import 'package:netflixproject/presentation/fast_laugh/widgets/video_list_item.dart';

class ScreenFastLaught extends StatelessWidget {
  const ScreenFastLaught({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<FastLaughBloc>(context).add(Initialize());
    });

    return Scaffold(
      body: SafeArea(
        child: BlocBuilder<FastLaughBloc, FastLaughState>(
          builder: (context, state) {
            if (state.isLoading) {
              return Center(child: CircularProgressIndicator());
            } else if (state.isError) {
              return Center(child: Text('error while getting the data'));
            } else if (state.videoList.isEmpty) {
              return Center(child: Text('No video data'));
            } else {
              return PageView(
                scrollDirection: Axis.vertical,
                children: List.generate(state.videoList.length, (index) {
                  return VideoListIteminherited(
                    widgets: VideoListitems(
                      index: index,
                      key: Key(index.toString()),
                    ),
                    moviedata: state.videoList[index],
                  );
                }),
              );
            }
          },
        ),
      ),
    );
  }
}
