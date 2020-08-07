import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:flutter/cupertino.dart';


import 'package:flutter_netflix_ui_redesign/models/movie_model.dart';
import 'package:flutter_netflix_ui_redesign/widgets/content_scroll.dart';
import 'package:flutter_netflix_ui_redesign/screens/second_screen.dart';

class YoutubePlayerDemoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Youtube Player Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        appBarTheme: const AppBarTheme(
          color: Colors.blueAccent,
          textTheme: TextTheme(
            headline6: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w300,
              fontSize: 20.0,
            ),
          ),
        ),
        iconTheme: const IconThemeData(
          color: Colors.blueAccent,
        ),
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}



class _HomeScreenState extends State<HomeScreen> {

  static String videoId = YoutubePlayer.convertUrlToId("https://www.youtube.com/watch?v=Tz_FGheIDeQ");
  YoutubePlayerController _controller = YoutubePlayerController(
    
    initialVideoId: videoId,
    flags: YoutubePlayerFlags(
        autoPlay: false,
    ),
  );
  
  
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
              height: 100.0,
              width: 200.0,
            ),
          ),
          leading: IconButton(
            padding: EdgeInsets.only(left: 30.0),
            onPressed: () => print('Menu'),
            icon: Icon(Icons.menu),
            iconSize: 30.0,
            color: Colors.white,
          ),
          actions: <Widget>[
            IconButton(
              padding: EdgeInsets.only(right: 30.0),
              onPressed: () => print('Search'),
              icon: Icon(Icons.search),
              iconSize: 30.0,
              color: Colors.white,
            ),
          ],
        ),
        body: ListView(
          children: <Widget>[
            YoutubePlayer(
              key: ObjectKey(_controller),
              controller: _controller,
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
            SizedBox(height: 10.0,),
            Text(
              "Welcome to Youtube video 1",
              textAlign: TextAlign.center,
              style: new TextStyle(fontSize: 20.0, color: Colors.white),
            ),
            SizedBox(height: 20.0),
            // ContentScroll(
            //   images: myList,
            //   title: 'Online Lectures 2020-21',
            //   imageHeight: 150.0,
            //   imageWidth: 250.0,
            // ),
            // SizedBox(height: 10.0),
            ContentScroll(
              images: popular,
              title: 'POPULAR',
              imageHeight: 150.0,
              imageWidth: 250.0,
            ),
            Container(
              alignment: Alignment.center,
              child: RaisedButton(
                color:Colors.blue,
                child: new Text(
                  "Discover More",
                  style: new TextStyle(fontSize: 20.0, color: Colors.white),
                ),
                onPressed: () => Navigator.push(
                context,
                CupertinoPageRoute(
                  builder: (context) => VideoList(),
                ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
