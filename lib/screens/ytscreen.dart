import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_netflix_ui_redesign/models/movie_model.dart';

class YTScreen extends StatefulWidget {
  int ind;
  YTScreen({
    this.ind
  });
  @override
  _YTScreenState createState() => _YTScreenState();
}

class _YTScreenState extends State<YTScreen> {
  @override
  Widget build(BuildContext context) {
return YoutubePlayerBuilder(
    player: YoutubePlayer(
      controller: YoutubePlayerController(
        initialVideoId: YoutubePlayer.convertUrlToId(videos[widget.ind].videoUrl),
        flags: YoutubePlayerFlags(
          autoPlay:true,
          mute:false,
          isLive: false,
        ),
      ),
      showVideoProgressIndicator: true,
    ),
    builder: (context, player) {
      return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.black,
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              player,
              Text(
                videos[widget.ind].videoTitle,
                style: TextStyle(
                  fontSize: 34,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 12,),
              Text(
                videos[widget.ind].description,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      );
      });
  }
}