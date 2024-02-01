import 'dart:convert';
import 'package:movie_filmku/models/popular_cast_model.dart';
import 'package:http/http.dart' as http;

class CastServices {
  String baseUrl = 'https://api.themoviedb.org/3/person';
  String apiKey = '5e9a5d4ab0ddc33184ebb8373d776d68';

  Future<List<CastModel>> getPopularCast() async {
    var url = '$baseUrl/popular?api_key=$apiKey';
    var headers = {'Content-Type': 'application/json'};
    var response = await http.get(Uri.parse(url), headers: headers);

    print(response.body);

    if (response.statusCode == 200) {
      List data = jsonDecode(response.body)['results'];
      List<CastModel> popularCast = [];

      for (var item in data) {
        popularCast.add(CastModel.fromJson(item));
      }
      return popularCast;
    } else {
      throw Exception('Gagal Get Popular Cast!');
    }
  }
}
