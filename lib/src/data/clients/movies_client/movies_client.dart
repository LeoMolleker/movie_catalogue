import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../../core/constants.dart';
import '../../../domain/entities/card_preview_entry/card_preview_entry.dart';

part 'movies_client.g.dart';

@RestApi(baseUrl: Constants.baseUrl)
abstract class MoviesClient {
  factory MoviesClient(
    final Dio dio, {
    final String baseUrl,
  }) = _MoviesClient;

  @GET('trending/movie/{time}')
  Future<CardPreviewEntry> getTrendingMovies(
    @Path() final String time,
  );

  @GET('movie/now_playing')
  Future<CardPreviewEntry> getNowPlayingMovies();

  @GET('movie/popular')
  Future<CardPreviewEntry> getPopularMovies();

  @GET('movie/top_rated')
  Future<CardPreviewEntry> getTopRatedMovies();

  @GET('movie/upcoming')
  Future<CardPreviewEntry> getUpcomingMovies();
}
