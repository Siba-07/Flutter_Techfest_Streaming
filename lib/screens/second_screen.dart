//import 'dart:developer';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
//import 'package:flutter/services.dart';

import 'package:flutter_netflix_ui_redesign/models/movie_model.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import '../models/movie_model.dart';

/// Creates list of video players
class VideoList extends StatefulWidget {
  @override
  _VideoListState createState() => _VideoListState();
}


class _VideoListState extends State<VideoList> {
  
  List<String> cont = [];
  List<String> title = [];
  List<YoutubePlayerController> _controllers=[];

  _VideoListState(){
    for(var i = 0;i<videos.length;i++){
      this.cont.add(YoutubePlayer.convertUrlToId(videos[i].videoUrl));
      this.title.add(videos[i].videoTitle);
    }
    this._controllers = cont
      .map<YoutubePlayerController>(
        (videoId) => YoutubePlayerController(
          initialVideoId: videoId,
          flags: const YoutubePlayerFlags(
            autoPlay: false,
          ),
        ),
      )
      .toList();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          elevation: 0.0,
          title: Center(
            child: Image(
              image: AssetImage('assets/images/techfest_logo.jpg'),
              height:100.0,
              width: 200.0,

            ),
          ),
        ),
        body: ListView.separated(
          itemBuilder: (context, index) {
            return Container(
              child: Column(
                children: <Widget>[
                  YoutubePlayer(
                    key: ObjectKey(_controllers[index]),
                    controller: _controllers[index],
                    actionsPadding: const EdgeInsets.only(left: 16.0),
                    bottomActions: [
                      CurrentPosition(),
                      const SizedBox(width: 10.0),
                      ProgressBar(isExpanded: true),
                      const SizedBox(width: 10.0),
                      RemainingDuration(),
                      FullScreenButton(),
                    ],
                  ),
                  Text(
                    title[index],
                    style: TextStyle(
                      color: Colors.lightBlue,
                      fontSize: 19,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            );
          },
          //SizedBox(height: 10.0,),
          itemCount: _controllers.length,
          separatorBuilder: (context, _) => const SizedBox(height: 10.0),
        ),
      ),
    );
  }
}
