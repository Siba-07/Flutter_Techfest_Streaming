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
}

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

