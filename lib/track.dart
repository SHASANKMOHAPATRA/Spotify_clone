import 'package:flutter/material.dart';
import 'package:flutter_spotify_ui/data/data.dart';
import 'package:flutter_spotify_ui/provider/provider.dart';
import 'package:provider/provider.dart';

class track_list extends StatelessWidget {
  final List<Song> tracks;
  const track_list({Key? key, required this.tracks}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DataTable(
      showCheckboxColumn: false,
      columns: [
        DataColumn(label: Text("TITLE")),
        DataColumn(label: Text("ARTIST")),
        DataColumn(label: Text("ALBUM")),
        DataColumn(label: Icon(Icons.access_time)),
      ],
      rows: tracks.map((e) {
        final selected = context.watch<Changesong>().selected?.id == e.id;
        return DataRow(
          cells: [
            DataCell(Text(
              e.title,
              style: Theme.of(context).textTheme.bodySmall,
            )),
            DataCell(Text(
              e.artist,
              style: Theme.of(context).textTheme.bodySmall,
            )),
            DataCell(Text(
              e.album,
              style: Theme.of(context).textTheme.bodySmall,
            )),
            DataCell(Text(
              e.duration,
              style: Theme.of(context).textTheme.bodySmall,
            ))
          ],
          selected: selected,
          onSelectChanged: (_) => context.watch<Changesong>().selectk(e),
        );
      }).toList(),
    );
  }
}
