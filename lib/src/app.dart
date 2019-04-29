import 'package:flutter/material.dart';
import 'package:flutter_movie_list_bloc/src/ui/movie_list.dart';

class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: ThemeData.dark(),
      home: new Scaffold(
        body: MovieList()
      ),
    );
  }

}