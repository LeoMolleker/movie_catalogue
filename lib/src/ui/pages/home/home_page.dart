import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/dio_configuration.dart';
import '../../../data/clients/movies_client/movies_client.dart';
import '../../../data/services/movies_services.dart';

class HomePage extends ConsumerWidget {
  const HomePage({
    final Key? key,
  }) : super(key: key);

  @override
  Widget build(final BuildContext context, final WidgetRef ref) {
    final movie = MoviesServices(moviesClient: MoviesClient(DioConfiguration.dioInstance));
    movie.getTrendingMovies(time: 'day').then((final value) {
      debugPrint(value.toString());
    });

    return const Scaffold(
      body: Center(
        child: Text(
          'Hi',
        ),
      ),
    );
  }
}
