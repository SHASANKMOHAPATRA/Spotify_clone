import 'package:flutter/material.dart';
import 'package:flutter_spotify_ui/provider/provider.dart';
import 'package:provider/provider.dart';

class current extends StatelessWidget {
  const current({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final selected = context.watch<Changesong>().selected;
    if (selected == null) return const SizedBox.shrink();
    return Row(
      children: [
        SizedBox(
          width: 8,
        ),
        Image.asset(
          "assets/lofigirl.jpg",
          height: 60,
          width: 60,
        ),
        SizedBox(
          width: 8,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              selected.title,
              style: Theme.of(context).textTheme.bodySmall,
            ),
            SizedBox(
              height: 4,
            ),
            Text(
              selected.artist,
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ],
        ),
        SizedBox(
          width: 8,
        ),
        Icon(Icons.favorite_outline),
        const Spacer(),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  Icon(Icons.shuffle_outlined),
                  SizedBox(
                    width: 14,
                  ),
                  Icon(Icons.skip_previous_outlined),
                  SizedBox(
                    width: 14,
                  ),
                  Icon(Icons.play_circle_fill_outlined),
                  SizedBox(
                    width: 14,
                  ),
                  Icon(Icons.skip_next_outlined),
                  SizedBox(
                    width: 14,
                  ),
                  Icon(Icons.repeat),
                  SizedBox(
                    width: 4,
                  ),
                ],
              ),
              SizedBox(
                height: 4,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text(
                      "0:00",
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    Container(
                      height: 3,
                      width: 250,
                      color: Colors.grey,
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    Text(
                      selected.duration,
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        const Spacer(),
        Icon(Icons.devices_outlined),
        SizedBox(
          width: 8,
        ),
        Icon(Icons.volume_up_outlined),
        SizedBox(
          width: 4,
        ),
        Container(
          height: 3,
          width: 70,
          color: Colors.grey,
        ),
        SizedBox(
          width: 4,
        ),
        Icon(Icons.fullscreen_outlined),
        SizedBox(
          width: 8,
        ),
      ],
    );
  }
}
