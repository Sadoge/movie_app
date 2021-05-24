import 'package:movie_app/domain/entities/movie_entity.dart';

class MovieModel extends MovieEntity {
  final double voteAverage;
  final String overview;
  final String releaseDate;
  final String title;
  final bool adult;
  final String backdropPath;
  final List<int> genreIds;
  final int id;
  final String originalLanguage;
  final String originalTitle;
  final String posterPath;
  final int voteCount;
  final bool video;
  final double popularity;
  final String mediaType;

  MovieModel({
    this.voteAverage,
    this.overview,
    this.releaseDate,
    this.title,
    this.adult,
    this.backdropPath,
    this.genreIds,
    this.id,
    this.originalLanguage,
    this.originalTitle,
    this.posterPath,
    this.voteCount,
    this.video,
    this.popularity,
    this.mediaType,
  }) : super(
          id: id,
          posterPath: posterPath,
          backdropPath: backdropPath,
          title: title,
          releaseDate: releaseDate,
          voteAverage: voteAverage,
          overview: overview,
        );

  factory MovieModel.fromJson(Map<String, dynamic> json) {
    return MovieModel(
      voteAverage: json['vote_average']?.toDouble() ?? 0.0,
      overview: json['overview'],
      releaseDate: json['release_date'],
      title: json['title'],
      adult: json['adult'],
      backdropPath: json['backdrop_path'],
      genreIds: json['genre_ids'].cast<int>(),
      id: json['id'],
      originalLanguage: json['original_language'],
      originalTitle: json['original_title'],
      posterPath: json['poster_path'],
      voteCount: json['vote_count'],
      video: json['video'],
      popularity: json['popularity']?.toDouble() ?? 0.0,
      mediaType: json['media_type'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['vote_average'] = this.voteAverage;
    data['overview'] = this.overview;
    data['release_date'] = this.releaseDate;
    data['title'] = this.title;
    data['adult'] = this.adult;
    data['backdrop_path'] = this.backdropPath;
    data['genre_ids'] = this.genreIds;
    data['id'] = this.id;
    data['original_language'] = this.originalLanguage;
    data['original_title'] = this.originalTitle;
    data['poster_path'] = this.posterPath;
    data['vote_count'] = this.voteCount;
    data['video'] = this.video;
    data['popularity'] = this.popularity;
    data['media_type'] = this.mediaType;
    return data;
  }
}
