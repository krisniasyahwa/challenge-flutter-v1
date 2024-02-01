import 'package:flutter/material.dart';
import 'package:movie_filmku/models/new_coming_model.dart';
import 'package:movie_filmku/services/new_coming_service.dart';

class NewComingProvider with ChangeNotifier {
  List<NewComingModel> _newComing = [];
  List<NewComingModel> get newComing => _newComing;
  set newComing(List<NewComingModel> newComing) {
    _newComing = newComing;
    notifyListeners();
  }

  Future<void> getNewComing() async {
    try {
      List<NewComingModel> newComing = await NewComingService().getNewComing();
      _newComing = newComing;
      notifyListeners();
    } catch (e) {
      print('Gagal Get New Coming Movie');
    }
  }
}
