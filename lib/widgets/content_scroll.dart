import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_netflix_ui_redesign/models/movie_model.dart';
import 'package:flutter_netflix_ui_redesign/screens/ytscreen.dart';

class ContentScroll extends StatefulWidget {
  final List<VideoInfo> vids = videos;
  final String title;
  final double imageHeight;
  final double imageWidth;

  ContentScroll({
    this.title,
    this.imageHeight,
    this.imageWidth,
  });

  @override
  _ContentScrollState createState() => _ContentScrollState();
}

class _ContentScrollState extends State<ContentScroll> {
  @override
  Widget build(BuildContext context) {
    return Column(
       children: <Widget>[
        Container(
          height: widget.imageHeight,
          child: ListView.builder(
            //padding: EdgeInsets.symmetric(horizontal: 30.0),
            scrollDirection: Axis.horizontal,
            itemCount: widget.vids.length,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                margin: EdgeInsets.symmetric(
                  horizontal: 10.0,
                  vertical: 20.0,
                ),
                width: widget.imageWidth,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: RaisedButton(
                  onPressed: () => Navigator.push(
                    context,
                    CupertinoPageRoute(builder: (context,) => YTScreen(ind:index,)),
                  ),
                  child: Image(
                      image: AssetImage(widget.vids[index].imageUrl),
                  ),
                ),
              );
            },
          ),
        ),
       ],
      );
  }
}
