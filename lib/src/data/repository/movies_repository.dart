import 'package:dio/dio.dart';

import '../../core/data_state.dart';
import '../../core/utils.dart';
import '../../domain/entities/card_preview_entry/card_preview_entry.dart';
import '../services/movies_services.dart';

class MoviesRepository {
  final MoviesServices _moviesServices;

  MoviesRepository({
    required final MoviesServices moviesServices,
  }) : _moviesServices = moviesServices;

  Future<DataState<CardPreviewEntry>> getTrendingMovies({
    required final String time,
  }) async {
    DataState<CardPreviewEntry>? dataState;
    final response = await _moviesServices.getTrendingMovies(time: 'day',).catchError((
        final Object e,
        ) async {
      Utils.handleApiError(
        error: e as DioError,
        method: 'getTrendingMovies()',
      );
      dataState = DataFailed(
        error: e,
      );
    });
    return dataState ??= response.results.isEmpty
        ? DataEmpty()
        : DataSuccess(
      data: response,
    );
  }
}
