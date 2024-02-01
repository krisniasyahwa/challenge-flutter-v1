import 'dart:convert';
import 'package:movie_filmku/models/new_coming_model.dart';
import 'package:http/http.dart' as http;

class NewComingService {
  String baseUrl = 'https://api.themoviedb.org/3/movie';
  String apiKey = '5e9a5d4ab0ddc33184ebb8373d776d68';

  Future<List<NewComingModel>> getNewComing() async {
    var url = '$baseUrl/upcoming?api_key=$apiKey';
    var headers = {'Content-Type': 'application/json'};
    var response = await http.get(Uri.parse(url), headers: headers);

    print(response.body);

    if (response.statusCode == 200) {
      List data = jsonDecode(response.body)['results'];
      List<NewComingModel> newComing = [];

      for (var item in data) {
        newComing.add(NewComingModel.fromJson(item));
      }
      return newComing;
    } else {
      throw Exception('Gagal Get New Coming Movie!');
    }
  }
}
