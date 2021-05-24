import 'package:movie_app/data/models/movie_model.dart';

class MoviesResultModel {
  int page;
  List<MovieModel> results;

  MoviesResultModel({this.page, this.results});

  MoviesResultModel.fromJson(Map<String, dynamic> json) {
    page = json['page'];
    if (json['results'] != null) {
      results = new List<MovieModel>();
      json['results'].forEach((v) {
        results.add(new MovieModel.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['page'] = this.page;
    if (this.results != null) {
      data['results'] = this.results.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
