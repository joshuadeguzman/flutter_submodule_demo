import 'package:flutter_submodule/model/movie.dart';
import 'package:rxdart/rxdart.dart';
import 'base_bloc.dart';

class MovieDetailBloc extends BaseBloc {
  final _fetchMovie = PublishSubject<Movie>();
  Observable<Movie> get movieDetailStream => _fetchMovie.stream;

  @override
  void dispose() async {
    await _fetchMovie.drain();
    _fetchMovie.close();
    super.dispose();
  }
  void getMovie(int movieId) async {
    Movie movie = await repository.getMovie(movieId);
    _fetchMovie.sink.add(movie);
  }
}
