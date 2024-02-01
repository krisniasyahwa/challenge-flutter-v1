import 'package:flutter/material.dart';
import 'package:movie_filmku/models/popular_cast_model.dart';
import 'package:movie_filmku/services/popular_cast_service.dart';

class CastProvider with ChangeNotifier {
  List<CastModel> _popularCast = [];
  List<CastModel> get popularCast => _popularCast;
  set popularCast(List<CastModel> popularCast) {
    _popularCast = popularCast;
    notifyListeners();
  }

  Future<void> getPopularCast() async {
    try {
      List<CastModel> popularCast = await CastServices().getPopularCast();
      _popularCast = popularCast;
      notifyListeners();
    } catch (e) {
      print('Gagal Get Popular Cast');
    }
  }
}
