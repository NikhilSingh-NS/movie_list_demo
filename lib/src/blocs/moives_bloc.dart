import 'package:rxdart/rxdart.dart';
import '../resources/repo.dart';
import '../models/ItemModel.dart';

class MoviesBloc{

  final _repo = Repo();
  final _moviesFetcher = PublishSubject<ItemModel>();

  Observable<ItemModel> get getMovies => _moviesFetcher.stream;

  fetchAllMovies() async{
    ItemModel itemModel = await _repo.getMovieList();
    _moviesFetcher.sink.add(itemModel);
  }

  dispose(){
    _moviesFetcher.close();
  }

}

final bloc = MoviesBloc();