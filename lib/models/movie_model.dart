import'dart:convert';
import 'package:flutter/material.dart';

class VideoInfo {
  String videoUrl;
  String videoTitle;
  String imageUrl;
  String description;

  VideoInfo({
    this.videoUrl,
    this.videoTitle,
    this.imageUrl,
    this.description
    });

  /*factory VideoInfo.fromJson(dynamic json) {
    return VideoInfo(
      videoAuthor: json['videoAuthor'] as String,
      videoUrl: json['videoUrl'] as String,
      imageUrl: json['imageUrl'] as String,
      description: json['description'] as String,
    );
  }*/
}

/*class Tutorial {

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
}*/

final List<VideoInfo> videos = [
  VideoInfo(
    videoUrl:'J7pJSnDCnYI',
    videoTitle:'Video 1',
    imageUrl:'http://i3.ytimg.com/vi/J7pJSnDCnYI/hqdefault.jpg',
    description: 'dfghjk',
  ),
  VideoInfo(
    videoUrl:'0_FBwJi8VBo',
    videoTitle:'Video 2',
    imageUrl:'http://i3.ytimg.com/vi/0_FBwJi8VBo/hqdefault.jpg',
    description: 'dfghjk',
  ),
  VideoInfo(
    videoUrl:'2z3CEBv8PLI',
    videoTitle:'Video 3',
    imageUrl:'http://i3.ytimg.com/vi/2z3CEBv8PLI/hqdefault.jpg',
    description: 'dfghjk',
  ),
  VideoInfo(
    videoUrl:'J8XJjkA5NuQ',
    videoTitle:'Video 4',
    imageUrl:'http://i3.ytimg.com/vi/J8XJjkA5NuQ/hqdefault.jpg',
    description: 'dfghjk',
  ),

];

