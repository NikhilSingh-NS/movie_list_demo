class ItemModel{
  int _page;
  int _total_results;
  int _total_pages;

  List<_Result> _results = [];

  ItemModel.fromJson(Map<String, dynamic> parsedJson){
    print(parsedJson['results'].length);
    _page = parsedJson['page'];
    _total_results = parsedJson['total_results'];
    _total_pages = parsedJson['total_pages'];
    for(int i=0; i<parsedJson['results'].length; i++)
      {
        _Result result = _Result(parsedJson['results'][i]);
        _results.add(result);
      }
  }

  List<_Result> get results => _results;

  int get total_pages => _total_pages;

  int get page => _page;

  int get total_results => _total_results;

}

class _Result{

  int _vote_count;
  int _id;
  bool _video;
  var _vote_average;
  String _title;
  double _popularity;
  String _poster_path;
  String _original_language;
  String _original_title;
  List<int> _genre_ids = [];
  String _backdrop_path;
  bool _adult;
  String _overview;
  String _release_date;

  _Result(result){
    _vote_count = result['vote_count'];
    _id = result['id'];
    _video = result['video'];
    _vote_average = result['vote_average'];
    _title = result['title'];
    _popularity = result['popularity'];
    _poster_path = result['poster_path'];
    _original_language = result['original_language'];
    _original_title = result['original_title'];
    for (int i = 0; i < result['genre_ids'].length; i++) {
      _genre_ids.add(result['genre_ids'][i]);
    }
    _backdrop_path = result['backdrop_path'];
    _adult = result['adult'];
    _overview = result['overview'];
    _release_date = result['release_date'];
  }

  String get release_date => _release_date;

  set release_date(String value) {
    _release_date = value;
  }

  String get overview => _overview;

  set overview(String value) {
    _overview = value;
  }

  bool get adult => _adult;

  set adult(bool value) {
    _adult = value;
  }

  String get backdrop_path => _backdrop_path;

  set backdrop_path(String value) {
    _backdrop_path = value;
  }

  List<int> get genre_ids => _genre_ids;

  set genre_ids(List<int> value) {
    _genre_ids = value;
  }

  String get original_title => _original_title;

  set original_title(String value) {
    _original_title = value;
  }

  String get original_language => _original_language;

  set original_language(String value) {
    _original_language = value;
  }

  String get poster_path => _poster_path;

  set poster_path(String value) {
    _poster_path = value;
  }

  double get popularity => _popularity;

  set popularity(double value) {
    _popularity = value;
  }

  String get title => _title;

  set title(String value) {
    _title = value;
  }

  get vote_average => _vote_average;

  set vote_average(value) {
    _vote_average = value;
  }

  bool get video => _video;

  set video(bool value) {
    _video = value;
  }

  int get id => _id;

  set id(int value) {
    _id = value;
  }

  int get vote_count => _vote_count;

  set vote_count(int value) {
    _vote_count = value;
  }

}