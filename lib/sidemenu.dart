import 'dart:html';

import 'package:flutter/material.dart';

class sidemenu extends StatefulWidget {
  const sidemenu({Key? key}) : super(key: key);

  @override
  State<sidemenu> createState() => _sidemenuState();
}

class _sidemenuState extends State<sidemenu> {
  @override
  Widget build(BuildContext context) {
    const yourLibrary = [
      'Made For You',
      'Recently Played',
      'Liked Songs',
      'Albums',
      'Artists',
      'Podcasts',
    ];
    const playlists = [
      'Today\'s Top Hits',
      'Discover Weekly',
      'Release Radar',
      'Chill',
      'Background',
      'lofi hip hop music - beats to relax/study to',
      'Vibes Right Now',
      'Time Capsule',
      'On Repeat',
      'Summer Rewind',
      'Dank Doggo Tunes',
      'Sleepy Doge',
    ];
    return Container(
      height: double.infinity,
      width: 280,
      color: Colors.black,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(8),
            child: Image.asset("assets/spotify_logo.png", height: 55),
          ),
          ListTile(
              leading: Icon(
                Icons.home_outlined,
                color: Colors.white,
              ),
              title: Text(
                "Home",
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              onTap: () {}),
          ListTile(
              leading: Icon(
                Icons.search_outlined,
                color: Colors.white,
              ),
              title: Text(
                "Search",
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              onTap: () {}),
          ListTile(
            leading: Icon(
              Icons.radio_outlined,
              color: Colors.white,
            ),
            title: Text(
              "Radio",
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            onTap: () {},
          ),
          ListTile(
            title: Text(
              "YOUR LIBRARY",
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            onTap: () {},
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(16, 0, 0, 18),
              child: ListView.separated(
                  itemBuilder: (context, index) {
                    return Text(
                      yourLibrary[index],
                      style: Theme.of(context).textTheme.bodyMedium,
                    );
                  },
                  separatorBuilder: (context, index) {
                    return Divider(
                      color: Colors.black,
                    );
                  },
                  itemCount: yourLibrary.length),
            ),
          ),
          ListTile(
            title: Text(
              "PLAYLISTS",
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            onTap: () {},
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(16, 0, 0, 18),
              child: ListView.separated(
                  itemBuilder: (context, index) {
                    return Text(
                      playlists[index],
                      style: Theme.of(context).textTheme.bodyMedium,
                    );
                  },
                  separatorBuilder: (context, index) {
                    return Divider(
                      color: Colors.black,
                    );
                  },
                  itemCount: yourLibrary.length),
            ),
          ),
        ],
      ),
    );
  }
}
