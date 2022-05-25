import '../../domain/entities/card_preview_entry/card_preview_entry.dart';
import '../clients/movies_client/movies_client.dart';

class MoviesServices {
  MoviesServices({
    required this.moviesClient,
  });

  final MoviesClient moviesClient;

  Future<CardPreviewEntry> getTrendingMovies({
    required final String time,
  }) async {
    final response = await moviesClient.getTrendingMovies(
      time,
    );
    return response;
  }

  Future<CardPreviewEntry> getNowPlayingMovies() async {
    final response = await moviesClient.getNowPlayingMovies();
    return response;
  }
}
