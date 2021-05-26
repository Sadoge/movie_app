import 'package:movie_app/data/models/movie_model.dart';

class MoviesResultModel {
  int page;
  List<MovieModel> movies;

  MoviesResultModel({this.page, this.movies});

  MoviesResultModel.fromJson(Map<String, dynamic> json) {
    page = json['page'];
    if (json['results'] != null) {
      movies = new List<MovieModel>();
      json['results'].forEach((v) {
        movies.add(new MovieModel.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['page'] = this.page;
    if (this.movies != null) {
      data['results'] = this.movies.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
