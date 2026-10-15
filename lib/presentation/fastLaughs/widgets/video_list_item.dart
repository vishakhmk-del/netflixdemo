import 'dart:developer';

import 'package:dmflix/application/fastlaugh/fast_laugh_bloc.dart';
import 'package:dmflix/core/colors/colors.dart';
import 'package:dmflix/core/urls/urls.dart';
import 'package:dmflix/domain/downloads/models/downloads.dart';
import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';
import 'package:video_player/video_player.dart';

class VideoListItemInheritedWidget extends InheritedWidget {
  final Widget widget;
  final Downloads movieData;

  const VideoListItemInheritedWidget({
    super.key,
    required this.widget,
    required this.movieData,
  }) : super(child: widget);
  @override
  bool updateShouldNotify(covariant VideoListItemInheritedWidget oldWidget) {
    return oldWidget.movieData != movieData;
  }

  static VideoListItemInheritedWidget? of(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<VideoListItemInheritedWidget>();
  }
}

class VideoListItem extends StatelessWidget {
  final int index;
  const VideoListItem({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    final posterPath =
        VideoListItemInheritedWidget.of(context)?.movieData.posterPath;
    final vdoUrl = videoUrls[index % videoUrls.length];
    return Stack(
      children: [
        // Container(color: Colors.accents[index % Colors.accents.length]),
        FastLaughVideoPlayerWdiget(videoUrl: vdoUrl, onStateChanged: (bool) {}),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.black.withValues(alpha: .1),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.volume_off, color: whitecolor, size: 30),
                  ),
                ),
                Column(
                  // crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                      child: CircleAvatar(
                        radius: 30,
                        backgroundImage:
                            posterPath == null
                                ? null
                                : NetworkImage('$imageAppendUrl$posterPath'),
                      ),
                    ),
                    ValueListenableBuilder(
                      valueListenable: likedVideoIdsNotifier,
                      builder: (
                        BuildContext context,
                        Set<int> newLikedListIds,
                        Widget? _,
                      ) {
                        final _index = index;
                        if (newLikedListIds.contains(_index)) {
                          return GestureDetector(
                            onTap: () {
                              likedVideoIdsNotifier.value.remove(_index);
                              likedVideoIdsNotifier.notifyListeners();
                            },
                            child: VideoActionWidget(
                              icon: Icons.favorite_outline,
                              title: "Liked",
                            ),
                          );
                        }
                        return GestureDetector(
                          onTap: () {
                            likedVideoIdsNotifier.value.add(_index);
                            likedVideoIdsNotifier.notifyListeners();
                          },
                          child: VideoActionWidget(
                            icon: Icons.emoji_emotions,
                            title: "LoL",
                          ),
                        );
                      },
                    ),
                    VideoActionWidget(icon: Icons.add, title: "My List"),

                    GestureDetector(
                      onTap: () async {
                        log("share clicked");
                        final movieName =
                            VideoListItemInheritedWidget.of(
                              context,
                            )?.movieData.title;
                        if (movieName != null) {
                          ShareResult shareResult = await SharePlus.instance
                              .share(ShareParams(text: movieName));
                        }
                      },
                      child: VideoActionWidget(
                        icon: Icons.share,
                        title: "Share",
                      ),
                    ),

                    VideoActionWidget(icon: Icons.play_arrow, title: "Play"),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class VideoActionWidget extends StatelessWidget {
  final IconData icon;
  final String title;
  const VideoActionWidget({super.key, required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10),
      child: Column(
        children: [
          Icon(icon, color: whitecolor, size: 30),
          Text(title, style: TextStyle(color: whitecolor, fontSize: 16)),
        ],
      ),
    );
  }
}

class FastLaughVideoPlayerWdiget extends StatefulWidget {
  final String videoUrl;
  final void Function(bool isPlaying) onStateChanged;
  const FastLaughVideoPlayerWdiget({
    super.key,
    required this.videoUrl,
    required this.onStateChanged,
  });

  @override
  State<FastLaughVideoPlayerWdiget> createState() =>
      _FastLaughVideoPlayerWdigetState();
}

class _FastLaughVideoPlayerWdigetState
    extends State<FastLaughVideoPlayerWdiget> {
  late VideoPlayerController _videoPlayerController;
  @override
  void initState() {
    super.initState();

    print("Video URL: ${widget.videoUrl}");

    _videoPlayerController = VideoPlayerController.networkUrl(
      Uri.parse(widget.videoUrl),
    );

    _videoPlayerController
        .initialize()
        .then((_) {
          setState(() {});
          _videoPlayerController.play();
          _videoPlayerController.setLooping(true);
        })
        .catchError((e) {
          print("Video initialization error: $e");
        });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.infinity,
      width: double.infinity,
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
