import 'package:flutter/material.dart';
import 'package:movie_filmku/models/popular_movie_model.dart';
import 'package:movie_filmku/services/popular_movie_service.dart';

class PopularMovieProvider with  ChangeNotifier {
  List<PopularMovieModel> _popularMovie = [];
  List<PopularMovieModel> get popularMovie => _popularMovie;
  set popularMovie(List<PopularMovieModel> popularMovie) {
    _popularMovie = popularMovie;
    notifyListeners();
  }

  Future<void> getPopularMovie() async {

    try {
      List<PopularMovieModel> popularMovie = await PopularMovieService().getPopularMovie();
      _popularMovie = popularMovie;
      notifyListeners();
    } catch (e) {
      print('Gagal Get Popular Movie');
    }
  }
}