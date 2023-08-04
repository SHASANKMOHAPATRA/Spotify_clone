import 'package:flutter/material.dart';
import 'package:flutter_spotify_ui/data/data.dart';

class Changesong extends ChangeNotifier {
  Song? selected;

  void selectk(Song track) {
    selected = track;
    notifyListeners();
  }
}
