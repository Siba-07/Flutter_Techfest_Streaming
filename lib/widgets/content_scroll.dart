import 'package:flutter/material.dart';
import 'package:flutter_netflix_ui_redesign/models/movie_model.dart';

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
        // Padding(
        //   padding: EdgeInsets.symmetric(horizontal: 40.0),
        //   child: Row(
        //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //     children: <Widget>[
        //       Text(
        //         widget.title,
        //         style: TextStyle(
        //           fontSize: 30.0,
        //           color: Colors.white,
        //           fontWeight: FontWeight.w600,
        //         ),
        //       ),
        //       GestureDetector(
        //         onTap: () => print('View ${widget.title}'),
        //         child: Icon(
        //           Icons.arrow_forward,
        //           color: Colors.black,
        //           size: 30.0,
        //         ),
        //       ),
        //     ],
        //   ),
        // ),
        
        Text(
            "POPULAR VIDEOS",
            textAlign: TextAlign.left,
            style: new TextStyle(fontSize: 20.0, color: Colors.white),
        ),
        
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
                  onPressed: () { print(index); },
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15.0),
                    child: Image(
                      image: AssetImage(widget.vids[index].imageUrl),
                      fit: BoxFit.cover,
                    ),
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
