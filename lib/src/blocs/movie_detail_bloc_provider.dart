import 'package:flutter/material.dart';
import 'movie_detail_bloc.dart';
export 'movie_detail_bloc.dart';

class MovieDetailBlocProvider extends InheritedWidget{

  final MovieDetailBloc bloc;

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) {
    return true;
  }

  MovieDetailBlocProvider({Key key, Widget child}): bloc = MovieDetailBloc(), super(key: key, child: child);

  static MovieDetailBloc of(BuildContext buildcontext){
    return (buildcontext.inheritFromWidgetOfExactType(MovieDetailBlocProvider) as MovieDetailBlocProvider).bloc;
  }

}