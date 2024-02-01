import 'package:flutter/material.dart';
import 'package:movie_filmku/models/now_playing_model.dart';
import 'package:movie_filmku/services/now_playing_service.dart';

class NowPlayingProvider with ChangeNotifier {
  List<NowPlayingModel> _nowPlaying = [];
  List<NowPlayingModel> get nowPlaying => _nowPlaying;
  set nowPlaying(List<NowPlayingModel> nowPlaying) {
    _nowPlaying = nowPlaying;
    notifyListeners();
  }

  Future<void> getNowPlaying() async {
    try {
      List<NowPlayingModel> nowPlaying =
          await NowPlayingService().getNowPlaying();
      _nowPlaying = nowPlaying;
      notifyListeners();
    } catch (e) {
      print('Gagal Get Now Playing Movie');
    }
  }
}
