import 'dart:async';
import 'package:http/http.dart' show Client;
import 'package:flutter_movie_list_bloc/src/models/ItemModel.dart';
import 'dart:convert';
import 'package:flutter_movie_list_bloc/src/models/trailer_model.dart';

class MovieApiProvider{

  Client client = Client();
  final _api_key = "ef9940df05f2990a2060134be1caee83";

  final _baseUrl = "https://api.themoviedb.org/3/movie";

  Future<ItemModel> fetchMovieList() async{
    final response = await client.get("$_baseUrl/popular?api_key=$_api_key");
    if(response.statusCode == 200){
      return ItemModel.fromJson(json.decode(response.body));
    }
    else {
      throw Exception('Failed to load ...');
      }
  }

  Future<TrailerModel> fetchMovieTrailer(int movieId) async{
    final response = await client.get("$_baseUrl/$movieId/videos?api_key=$_api_key");
    if(response.statusCode == 200){
      return TrailerModel.fromJson(json.decode(response.body));
    }
    else{
      throw Exception('Failed to load ...');
    }
  }

}
