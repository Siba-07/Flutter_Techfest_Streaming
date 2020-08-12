import'dart:convert';
import 'package:flutter/material.dart';

class VideoInfo {
  String videoUrl;
  String videoTitle;
  String videoAuthor;
  String imageUrl;
  String description;

  VideoInfo({
    this.videoUrl,
    this.videoTitle, 
    this.videoAuthor,
    this.imageUrl,
    this.description
    });

  factory VideoInfo.fromJson(dynamic json) {
    return VideoInfo(
      videoAuthor: json['videoAuthor'] as String,
      videoTitle: json['videoTitle'] as String,
      videoUrl: json['videoUrl'] as String,
      imageUrl: json['imageUrl'] as String,
      description: json['description'] as String,
    );
  }
}

class Tutorial {

  List <VideoInfo> tags;

  Tutorial([this.tags]);

  factory Tutorial.fromJson(dynamic json) {
    if (json != null) {
      var tagObjsJson = json['tags'] as List;
      List<VideoInfo> _tags = tagObjsJson.map((tagJson) =>
          VideoInfo.fromJson(tagJson)).toList();
      return Tutorial(
          _tags
      );
    }
    else {
      return Tutorial();
    }
  }
}

final List<VideoInfo> movies=

final List<VideoInfo> videos = [
  VideoInfo(
    videoUrl:'https://www.youtube.com/watch?v=J7pJSnDCnYI',
    videoTitle:'Video 1',
    videoAuthor:'Techfest IIT Bombay',
    imageUrl:'assets/images/nutcracker.jpg',
    description: 'dfghjk',
  ),
  VideoInfo(
    videoUrl:'https://www.youtube.com/watch?v=0_FBwJi8VBo',
    videoTitle:'Video 2',
    videoAuthor:'Techfest IIT Bombay',
    imageUrl:'assets/images/spiderman.jpg',
    description: 'dfghjk',
  ),
  VideoInfo(
    videoUrl:'https://www.youtube.com/watch?v=2z3CEBv8PLI',
    videoTitle:'Video 3',
    videoAuthor:'Techfest IIT Bombay',
    imageUrl:'assets/images/toystory.jpg',
    description: 'dfghjk',
  ),
  VideoInfo(
    videoUrl:'https://www.youtube.com/watch?v=J8XJjkA5NuQ',
    videoTitle:'Video 4',
    videoAuthor:'Techfest IIT Bombay',
    imageUrl:'assets/images/spiderman_1.jpg',
    description: 'dfghjk',
  ),

];

