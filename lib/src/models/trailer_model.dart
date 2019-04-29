class TrailerModel{

  int _id;
  List<_Result> results;

  TrailerModel.fromJson(Map<String, dynamic> parsedJson){
    _id = parsedJson['id'];
    for(int i=0; i< parsedJson['results'].length; i++)
      {
        _Result result = new _Result(parsedJson['results'][i]);
        results.add(result);
      }
  }

  int get id => _id;

  List<_Result> get resutls => results;

}

class _Result{

  String _id;
  String _iso_639_1;
  String _iso_3166_1;
  String _key;
  String _name;
  String _site;
  int _size;
  String _type;

  _Result(result){
    _id = result["id"];
    _iso_639_1 = result['iso_639_1'];
    _iso_3166_1 = result['iso_3166_1'];
    _key = result['key'];
    _name = result['name'];
    _site = result['site'];
    _size = result['size'];
    _type = result['type'];
  }

  String get type => _type;

  int get size => _size;

  String get site => _site;

  String get name => _name;

  String get key => _key;

  String get iso_3166_1 => _iso_3166_1;

  String get iso_639_1 => _iso_639_1;

  String get id => _id;

}