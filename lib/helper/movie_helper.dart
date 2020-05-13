import 'dart:convert';
import 'package:http/http.dart' show Client;
import 'package:movieday/model/imagemodel.dart';
//import 'package:http/http.dart' as http;
import 'package:movieday/model/itemmodel.dart';
import 'package:movieday/model/movie_detail_model.dart';
class MovieHelper {
  final _apiKey="ee1d24edcc0665ce18ee1ba96c88e495";
  Client client= Client();
  
  Future<Item_model> fetchMovieList(String type) async{
    final String _url="https://api.themoviedb.org/3/movie/";
    final response = await client.get('$_url$type?api_key=$_apiKey');
    //final response = await http.get('$_url$type?api_key=$_apiKey');
    print(response.request.url);
    print(response.body.toString());
    if(response.statusCode==200)
      return Item_model.fromJson(jsonDecode(response.body));
    else
      throw  Exception("Failed to Load Post");
  }

  Future<ImageModel> fetchMovieImages(int movieid) async{
    final String _url="https://api.themoviedb.org/3/movie/";
    final response = await client.get('$_url$movieid/images?api_key=$_apiKey');
    print(response.request.url);
    print(response.body.toString());
    if(response.statusCode==200)
      return ImageModel.fromJson(jsonDecode(response.body));
    else
      throw  Exception("Failed to Load Post");
  }

  Future<MovieDetailModel> fetchMovieDetails(int movieid) async{
    final String _url="https://api.themoviedb.org/3/movie/";
    final response = await client.get('$_url$movieid?api_key=$_apiKey');
    print(response.request.url);
    print(response.body.toString());
    if(response.statusCode==200)
      return MovieDetailModel.fromJson(jsonDecode(response.body));
    else
      throw  Exception("Failed to Load Post");
  }
}