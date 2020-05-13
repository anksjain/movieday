class ImageModel {
  double aspect_ratio;
  String file_path;
  int height;
  String iso_639_1;
  double vote_average;
  int vote_count;
  int width;


  ImageModel.fromJson(Map<String,dynamic> prasedJson)
  {
    aspect_ratio=prasedJson['aspect_ratio'];
    aspect_ratio = prasedJson['aspect_ratio'];
    file_path = prasedJson['file_path'];
    height = prasedJson['height'];
    iso_639_1 = prasedJson['iso_639_1'];
    vote_average = prasedJson['vote_average'];
    vote_count = prasedJson['vote_count'];
    width = prasedJson['width'];
  }

  static List<ImageModel> fromJsonArray(List jsonArray)
  {
    return jsonArray?.map((item){
      return ImageModel.fromJson(item);
    })?.toList();
  }
}