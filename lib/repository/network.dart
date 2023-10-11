import 'dart:convert';
import 'dart:developer';
import 'package:http/http.dart' as http;
import 'package:ticket_app/common/models/movie_detail_model.dart';
import 'package:ticket_app/common/models/movie_model.dart';

const String url = "https://api.themoviedb.org/3";
const String urlImage = "";
const apiKey = "1ebcca95cc3dfd9f2262a3f21f557eab";

Future<List<MovieModel>> getListMoviesPlayingNow() async {
  try {
    final response =
        await http.get(Uri.parse('$url/movie/now_playing?api_key=$apiKey'));
    List<MovieModel> movies = [];
    if (response.statusCode == 200) {
      final results = json.decode(response.body)["results"] as List<dynamic>;
      movies = results.map((model) => MovieModel.fromJson(model)).toList();
      return movies;
    } else {
      return [];
    }
  } catch (e) {
    log("Error: $e");
    return [];
  }
}

Future<List<MovieModel>> getListMoviesUpComing() async {
  try {
    final response =
        await http.get(Uri.parse('$url/movie/upcoming?api_key=$apiKey'));
    List<MovieModel> movies = [];
    if (response.statusCode == 200) {
      final results = json.decode(response.body)["results"] as List<dynamic>;
      movies = results.map((model) => MovieModel.fromJson(model)).toList();
      return movies;
    } else {
      return [];
    }
  } catch (e) {
    log("Error: $e");
    return [];
  }
}

Future<MovieDetailModel?> getMovieDetail(int movieId) async {
  try {
    final response =
        await http.get(Uri.parse('$url/movie/$movieId?api_key=$apiKey'));
    if (response.statusCode == 200) {
      final result = json.decode(response.body);
      MovieDetailModel detail = MovieDetailModel.fromJson(result);
      return detail;
    } else {
      return null;
    }
  } catch (e) {
    log("Error: $e");
    return null;
  }
}
