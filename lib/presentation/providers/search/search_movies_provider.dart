import 'package:cinemapedia/domain/entities/movie.dart';
import 'package:cinemapedia/presentation/providers/providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final searchQueryProvider = StateProvider<String>((ref) => '');

final searchedMoviesProvider =
    StateNotifierProvider<SearchedMoviesNotifier, List<Movie>>(
  (ref) {
    final movieRepository = ref.read(moviesRepositoryProvider);
    return SearchedMoviesNotifier(
        ref: ref, searchedMovies: movieRepository.searchMovies);
  },
);

typedef SearchedMoviesCallback = Future<List<Movie>> Function(String query);

class SearchedMoviesNotifier extends StateNotifier<List<Movie>> {
  final SearchedMoviesCallback searchedMovies;
  final Ref ref;

  SearchedMoviesNotifier({
    required this.ref,
    required this.searchedMovies,
  }) : super([]);

  Future<List<Movie>> searchedMoviesByQuery(String query) async {
    final List<Movie> movies = await searchedMovies(query);
    ref.read(searchQueryProvider.notifier).state = query;

    state = movies;

    return movies;
  }
}
