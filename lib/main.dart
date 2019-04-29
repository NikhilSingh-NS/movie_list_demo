import 'package:flutter/material.dart';
import 'package:flutter_movie_list_bloc/src/app.dart';
import 'package:flutter/services.dart';

void main() => SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
    .then((_) {
  runApp(new MyApp());
});