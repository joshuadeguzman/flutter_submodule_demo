import 'dart:async';
import 'package:flutter_submodule/model/movie.dart';
import 'package:flutter_submodule/resources/api_provider.dart';

class Repository {
  final apiProvider = ApiProvider();
  
  Future<Movie> getMovie(int movieId) => apiProvider.getMovie(movieId);
}
