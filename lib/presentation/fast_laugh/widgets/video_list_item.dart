import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:netflixproject/application/fast_laught/fast_laugh_bloc.dart';
import 'package:netflixproject/core/colors/colors.dart';
import 'package:netflixproject/core/constants.dart';
import 'package:netflixproject/core/string.dart';
import 'package:netflixproject/domain/downloads/models/download.dart';
import 'package:share_plus/share_plus.dart';
import 'package:video_player/video_player.dart';

class VideoListIteminherited extends InheritedWidget {
  final Widget widgets;
  final Downloadsfd moviedata;
  VideoListIteminherited({
    Key? key,
    required this.widgets,
    required this.moviedata,
  }) : super(key: key, child: widgets);

  @override
  bool updateShouldNotify(covariant VideoListIteminherited oldWidget) {
    return oldWidget.moviedata != moviedata;
  }

  static VideoListIteminherited? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<VideoListIteminherited>();
  }
}

class VideoListitems extends StatelessWidget {
  final int index;

  const VideoListitems({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    final posterPath = VideoListIteminherited.of(context)?.moviedata.posterPath;
    final videoUrl = dummyvideoUrl[index % dummyvideoUrl.length];
    print('the poster path in the widget bild$posterPath');
    return Stack(
      children: [
        FastlaughVideoplayer(videoUrl: videoUrl, onStateChange: (bool) {}),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.black,
                  radius: 25,
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.volume_off,
                      weight: 12,
                      color: kwhite,
                      size: 30,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                  child: Column(
                    // crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      kheight,
                      CircleAvatar(
                        radius: 30,
                        backgroundImage:
                            posterPath == null
                                ? null
                                : NetworkImage('$imageAppent$posterPath'),
                      ),
                      kheight,
                      kheight,
                      ValueListenableBuilder(
                        valueListenable: likedVideoidListNotifier,
                        builder: (BuildContext c, newlistId, Widget? _) {
                          final _index = index;
                          if (newlistId.contains(_index)) {
                            return GestureDetector(
                              onTap: () {
                                likedVideoidListNotifier.value.remove(_index);
                                likedVideoidListNotifier.notifyListeners();
                                // BlocProvider.of<FastLaughBloc>(context).add(UnlikedVideo(id: _index));
                              },
                              child: VideoactionWidget(
                                icon: Icons.favorite_outline,
                                title: 'Liked',
                              ),
                            );
                          }
                          return GestureDetector(
                            onTap: () {
                              likedVideoidListNotifier.value.add(_index);
                              likedVideoidListNotifier.notifyListeners();
                              //BlocProvider.of<FastLaughBloc>(context).add(LikedVideo(id: _index));
                            },
                            child: VideoactionWidget(
                              icon: Icons.emoji_emotions,
                              title: 'LOL',
                            ),
                          );
                        },
                      ),
                      kheight,
                      VideoactionWidget(icon: Icons.add, title: 'My List'),
                      kheight,
                      GestureDetector(
                        onTap: () {
                          final _movieName =
                              VideoListIteminherited.of(
                                context,
                              )?.moviedata.posterPath;
                          if (_movieName != null) {
                            SharePlus.instance.share(
                              ShareParams(text: _movieName),
                            );
                          }
                        },
                        child: VideoactionWidget(
                          icon: Icons.share,
                          title: 'Share',
                        ),
                      ),
                      kheight,
                      VideoactionWidget(icon: Icons.play_arrow, title: 'Play'),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class VideoactionWidget extends StatelessWidget {
  final IconData icon;
  final String title;
  const VideoactionWidget({super.key, required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, color: kwhite, size: 25),
        Text(title, style: TextStyle(fontSize: 13)),
      ],
    );
  }
}

//use chatchpyty
class FastlaughVideoplayer extends StatefulWidget {
  final String videoUrl;
  final void Function(bool isPlaying) onStateChange;
  const FastlaughVideoplayer({
    super.key,
    required this.videoUrl,
    required this.onStateChange,
  });

  @override
  State<FastlaughVideoplayer> createState() => _FastlaughVideoplayerState();
}

class _FastlaughVideoplayerState extends State<FastlaughVideoplayer> {
  late VideoPlayerController _videoPlayerController;
  @override
  void initState() {
    _videoPlayerController = VideoPlayerController.networkUrl(
      Uri.parse(widget.videoUrl),
    );
    //_videoPlayerController=VideoPlayerController.networkUrl(widget.videoUrl);
    _videoPlayerController.initialize().then((value) {
      setState(() {
        _videoPlayerController.play();
      });
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child:
          _videoPlayerController.value.isInitialized
              ? AspectRatio(
                aspectRatio: _videoPlayerController.value.aspectRatio,
                child: VideoPlayer(_videoPlayerController),
              )
              : Center(child: CircularProgressIndicator(strokeWidth: 2)),
    );
  }

  @override
  void dispose() {
    _videoPlayerController.dispose();
    super.dispose();
  }
}
