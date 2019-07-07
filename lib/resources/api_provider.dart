import 'dart:convert';
import 'dart:io';
import 'package:flutter_submodule/model/movie.dart';
import 'package:http/http.dart' show Client;

class ApiProvider {
  Client client = Client();
  final apiKey = '973e0b034af17e62d03ca343795ac965';
  final baseUrl = 'https://api.themoviedb.org/3/movie';
  
  Future<Movie> getMovie(int movieId) async {
    final response = await client.get('$baseUrl/$movieId?api_key=$apiKey');
    if (response.statusCode == HttpStatus.ok) {
      print(response.request.url.toString());
      return Movie(json.decode(response.body));
    } else {
      throw Exception('Failed to load movie');
    }
  }
}
