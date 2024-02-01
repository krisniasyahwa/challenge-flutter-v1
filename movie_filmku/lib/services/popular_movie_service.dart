import 'dart:convert';
import 'package:movie_filmku/models/popular_movie_model.dart';
import 'package:http/http.dart' as http;

class PopularMovieService {
  String baseUrl = 'https://api.themoviedb.org/3/movie';
  String apiKey = '5e9a5d4ab0ddc33184ebb8373d776d68';

  Future<List<PopularMovieModel>> getPopularMovie() async {
    var url = '$baseUrl/popular?api_key=$apiKey';
    var headers = {'Content-Type': 'application/json'};
    var response = await http.get(Uri.parse(url), headers: headers);

    print(response.body);

    if (response.statusCode == 200) {
      List data = jsonDecode(response.body)['results'];
      List<PopularMovieModel> popularMovie = [];

      for (var item in data) {
        popularMovie.add(PopularMovieModel.fromJson(item));
      }
      return popularMovie;
    } else {
      throw Exception('Gagal Get Popular Movie!');
    }
  }
}
