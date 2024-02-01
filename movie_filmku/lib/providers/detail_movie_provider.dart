import 'package:flutter/material.dart';
import 'package:movie_filmku/models/detail_movie_model.dart';
import 'package:movie_filmku/services/detail_movie_service.dart';

class DetailMovieProvider with  ChangeNotifier {
  List<DetailMovieModel> _detailMovie = [];
  List<DetailMovieModel> get detailMovie => _detailMovie;
  set detailMovie(List<DetailMovieModel> detailMovie) {
    _detailMovie = detailMovie;
    notifyListeners();
  }

  Future<void> getDetailMovie() async {

    try {
      List<DetailMovieModel> detailMovie = await DetailMovieService().getDetailMovie();
      _detailMovie = detailMovie;
      notifyListeners();
    } catch (e) {
      print('Gagal Get Detail Movie');
    }
  }
}