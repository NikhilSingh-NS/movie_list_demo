import '../resources/repo.dart';
import 'package:rxdart/rxdart.dart';
import '../models/trailer_model.dart';

class MovieDetailBloc{
  final _repository = Repo();
  final _movieId = PublishSubject<int>();
  final _trailers = BehaviorSubject<Future<TrailerModel>>();

  Function(int) get FetchTrailersById => _movieId.sink.add;

  Observable<Future<TrailerModel>> get movieTrailers => _trailers.stream;

  MovieDetailBloc(){
    _movieId.stream.transform(_itemTransformer()).pipe(_trailers);
  }

  _itemTransformer(){
    return ScanStreamTransformer(
        (Future<TrailerModel> trailer, int id, int index){
          trailer = _repository.getMovieTrailer(id);
          return trailer;
    });
  }

  dispose() async{
    _movieId.close();
    await _trailers.drain();
    _trailers.close();
  }
}