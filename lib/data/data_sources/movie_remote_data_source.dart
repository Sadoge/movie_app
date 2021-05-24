import 'package:http/http.dart';
import 'package:movie_app/data/core/api_constants.dart';
import 'package:movie_app/data/models/movie_model.dart';

abstract class MovieRemoteDataSource {
  Future<List<MovieModel>> getTrending();
}

class MovieRemoteDataSourceImpl extends MovieRemoteDataSource {
  final Client _client;

  MovieRemoteDataSourceImpl(this._client);

  @override
  Future<List<MovieModel>> getTrending() async {
    final repsponse = await _client.get(
      '${ApiConstants.BASE_URL}/trending/movie/day?',
    );
  }
}
