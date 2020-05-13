//import 'package:demo_bloc/src/model/belong_to_collection_model.dart';
//import 'package:demo_bloc/src/model/production_company_model.dart';
//import 'package:demo_bloc/src/model/production_country_model.dart';
//import 'package:demo_bloc/src/model/spoken_language.dart';
import 'package:movieday/model/basemodel.dart';
import 'package:movieday/model/imagemodel.dart';
import 'package:movieday/model/genre_model.dart';


class MovieImageModel extends Base_model {
  int id;
  List<ImageModel> posters = [];
  List<ImageModel> backdrops = [];
  MovieImageModel.fromJson(Map<String, dynamic> parsedJson) {
    id = parsedJson['id'];
    posters = ImageModel.fromJsonArray(parsedJson['posters']);
    backdrops = ImageModel.fromJsonArray(parsedJson['backdrops']);
  }
}

