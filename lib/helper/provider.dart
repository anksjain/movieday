import 'package:movieday/helper/movie_helper.dart';
import 'dart:async';
import 'package:movieday/model/imagemodel.dart';
import 'package:movieday/model/itemmodel.dart';
import 'package:movieday/model/movie_detail_model.dart';
class Provider
{
  final MovieHelper movieHelper=MovieHelper();
  Future<MovieDetailModel> fetchMovieList(int movieId) => movieHelper.fetchMovieDetails(movieId);

  Future<ImageModel> fetchMoveImages(int movieId) => movieHelper.fetchMovieImages(movieId);

  Future<Item_model> fetchMoveList(String type) => movieHelper.fetchMovieList(type);


//Future<Item_model> fetchMovieList(String type)
//{
//  return movieHelper.fetchMovieList(type);
//}


}