import 'package:movieday/model/basemodel.dart';
class Item_model extends Base_model{
  //  are the model avialble in first page of json script
  int _page;
  int _total_results;
  int _total_pages;
  List<_Results> _result=[];

  //feteching data from json to variable assigned above
  Item_model.fromJson(Map<String,dynamic> prasedJson)
  {
    print(prasedJson['results'].length);
    _page=prasedJson['page'];
    _total_pages=prasedJson['total_pages'];
    _total_results=prasedJson['total_result'];
    List<_Results> temp=[];
    for(int i=0;i<prasedJson['results'].length;i++)
    {
      _Results result = _Results(prasedJson['results'][i]);
          temp.add(result);
    }
    _result=temp;
  }
  //using this method we can fetch or get the variable declarded above
  List<_Results> get resultlist => _result;
  int get totalresults=> _total_results;
  int get totalpages=> _total_pages;
  int get page=> _page;
}

class _Results {
  // this all the are variable of json script available gor each result(in json)
  double _popularity;
  int _vote_count;
  bool _video;
  String _poster_path;
  int _id;
  bool _adult;
  String _backdrop_path;
  String _original_language;
  String _original_title;
  List<int> _genre_ids;
  String _title;
  double _vote_average;      // may be var
  String _overview;
  String _release_date;

  // assining the value from json script to class variable which decleared above
  _Results(result)
  {
    _popularity=result['popularity'];
    _vote_count=result['vote_count'];
    _video=result['video'];
    _poster_path=result['poster_path'];
    _id=result['id'];
    _adult=result['adult'];
    _backdrop_path=result['backdrop_path'];
    _original_language=result['original_language'];
    _original_title=result['original_title'];
    _title=result['title'];
    _vote_average=result['vote_average'];
    _overview=result['overview'];
    _release_date=result['release_date'];
    for(int i=0;i<result['genre_ids'][i];i++)
      _genre_ids.add(result['genre_ids'][i]);

  }

  //below are the methode for fectching or getting the above variables
  double get popularity => _popularity;
  int get vote_count => _vote_count;
  bool get video=> _video;
  String get poster_path=> _poster_path;
  int get id=> _id;
  bool get adult=> _adult;
  String get backdrop_path=> _backdrop_path;
  String get original_language=> _original_language;
  String get original_title=> _original_title;
  List<int> get genre_ids=> _genre_ids;
  String get title=> _title;
  double get vote_average=> _vote_average;
  String get overview=> _overview;
  String get release_date=> _release_date;



}