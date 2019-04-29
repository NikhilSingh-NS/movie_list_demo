import 'movie_api_provider.dart';
import 'dart:async';
import '../models/ItemModel.dart';
import '../models/trailer_model.dart';

class Repo{

  MovieApiProvider movieApiProvider = MovieApiProvider();

  Future<ItemModel> getMovieList() => movieApiProvider.fetchMovieList();

  Future<TrailerModel> getMovieTrailer(int movieId) => movieApiProvider.fetchMovieTrailer(movieId);

}