import 'dart:convert';
import 'package:movie_filmku/models/detail_movie_model.dart';
import 'package:http/http.dart' as http;

class DetailMovieService {
  String baseUrl = 'https://api.themoviedb.org/3/movie';
  String apiKey = '5e9a5d4ab0ddc33184ebb8373d776d68';

  Future<List<DetailMovieModel>> getDetailMovie() async {
    var url = '$baseUrl/609681?api_key=$apiKey';
    var headers = {'Content-Type': 'application/json'};
    var response = await http.get(Uri.parse(url), headers: headers);

    print(response.body);

    if (response.statusCode == 200) {
      List data = jsonDecode(response.body)[''];
      List<DetailMovieModel> detailMovie = [];

      for (var item in data) {
        detailMovie.add(DetailMovieModel.fromJson(item));
      }
      return detailMovie;
    } else {
      throw Exception('Gagal Get Detail Movie!');
    }
  }
}
