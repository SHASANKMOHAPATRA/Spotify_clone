import 'package:flutter_spotify_ui/track.dart';
import 'package:flutter_spotify_ui/data/data.dart';
import 'package:flutter_spotify_ui/main.dart';
import 'package:flutter/material.dart';
export 'package:flutter_spotify_ui/play_list.dart';

class play_list extends StatefulWidget {
  final Playlist playlist;
  const play_list({Key? key, required this.playlist}) : super(key: key);

  @override
  State<play_list> createState() => _play_listState();
}

class _play_listState extends State<play_list> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leadingWidth: double.infinity,
        elevation: 0,
        leading: Row(
          children: [
            SizedBox(
              width: 6,
            ),
            Container(
              decoration:
                  BoxDecoration(shape: BoxShape.circle, color: Colors.black26),
              child: Icon(
                Icons.keyboard_arrow_left_outlined,
                size: 26,
              ),
            ),
            SizedBox(
              width: 6,
            ),
            Container(
              decoration:
                  BoxDecoration(shape: BoxShape.circle, color: Colors.black26),
              child: Icon(
                Icons.keyboard_arrow_right_outlined,
                size: 26,
              ),
            ),
            const Spacer(),
            Icon(Icons.supervised_user_circle_outlined),
            SizedBox(
              width: 6,
            ),
            Text(
              "Marcus Ng",
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            SizedBox(
              width: 6,
            ),
            Icon(Icons.arrow_drop_down_outlined),
            SizedBox(
              width: 6,
            ),
          ],
        ),
      ),
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
              Colors.red,
              Theme.of(context).scaffoldBackgroundColor,
            ],
                stops: [
              0,
              0.2
            ])),
        child: ListView(
          children: [
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(8),
                  child: Image.asset(
                    "assets/lofigirl.jpg",
                    height: 200,
                    width: 200,
                  ),
                ),
                SizedBox(
                  width: 16,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "PLAYLIST",
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      "lofi hip hop music - beats to relax/study to",
                      style: TextStyle(
                          fontFamily: "Montserrat-Bold",
                          fontWeight: FontWeight.bold,
                          fontSize: 25),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      "A daily selection of chilled beats - perfect to help you relax & study",
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      "Created by Lofi Girl -12 songs,28 min",
                      style: Theme.of(context).textTheme.bodySmall,
                    )
                  ],
                )
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
                  child: InkWell(
                      onTap: () {},
                      child: Container(
                        height: 30,
                        width: 100,
                        decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius:
                                BorderRadius.all(Radius.circular(25))),
                        child: Center(
                          child: Text(
                            'PLAY',
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                        ),
                      )),
                ),
                SizedBox(
                  width: 16,
                ),
                Icon(Icons.favorite_border_outlined),
                SizedBox(
                  width: 16,
                ),
                Icon(Icons.more_horiz),
                const Spacer(),
                Text("FOLLOWERS 5,351,685",
                    style: Theme.of(context).textTheme.bodySmall),
                SizedBox(
                  width: 8,
                )
              ],
            ),
            track_list(tracks: widget.playlist.songs),
          ],
        ),
      ),
    );
  }
}
