import 'dart:convert';
import 'package:movie_filmku/models/now_playing_model.dart';
import 'package:http/http.dart' as http;

class NowPlayingService {
  String baseUrl = 'https://api.themoviedb.org/3/movie';
  String apiKey = '5e9a5d4ab0ddc33184ebb8373d776d68';

  Future<List<NowPlayingModel>> getNowPlaying() async {
    var url = '$baseUrl/now_playing?api_key=$apiKey';
    var headers = {'Content-Type': 'application/json'};
    var response = await http.get(Uri.parse(url), headers: headers);

    print(response.body);

    if (response.statusCode == 200) {
      List data = jsonDecode(response.body)['results'];
      List<NowPlayingModel> nowPlaying = [];

      for (var item in data) {
        nowPlaying.add(NowPlayingModel.fromJson(item));
      }
      return nowPlaying;
    } else {
      throw Exception('Gagal Get Now Playing Movie!');
    }
  }
}
