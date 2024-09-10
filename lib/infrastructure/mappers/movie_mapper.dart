import 'package:cinemapedia/domain/entities/movie.dart';
import 'package:cinemapedia/infrastructure/models/themoviedb/movie_details.dart';
import 'package:cinemapedia/infrastructure/models/themoviedb/movie_themoviedb.dart';

class MovieMapper {
  static Movie themoviedbToEntity(MovieThemoviedb themoviedb) => Movie(
        adult: themoviedb.adult,
        backdropPath: (themoviedb.backdropPath != '')
            ? 'https://image.tmdb.org/t/p/w500${themoviedb.backdropPath}'
            : 'https://salonlfc.com/wp-content/uploads/2018/01/image-not-found-1-scaled.png',
        genreIds: themoviedb.genreIds.map((e) => e.toString()).toList(),
        id: themoviedb.id,
        originalLanguage: themoviedb.originalLanguage,
        originalTitle: themoviedb.originalTitle,
        overview: themoviedb.overview,
        popularity: themoviedb.popularity,
        posterPath: (themoviedb.posterPath != '')
            ? 'https://image.tmdb.org/t/p/w500${themoviedb.posterPath}'
            : 'no-poster', //'https://m.media-amazon.com/images/I/61s8vyZLSzL.jpg',
        releaseDate: themoviedb.releaseDate,
        title: themoviedb.title,
        video: themoviedb.video,
        voteAverage: themoviedb.voteAverage,
        voteCount: themoviedb.voteCount,
      );

  static Movie movieDetailsToEntity(MovieDetails themoviedb) => Movie(
        adult: themoviedb.adult,
        backdropPath: (themoviedb.backdropPath != '')
            ? 'https://image.tmdb.org/t/p/w500${themoviedb.backdropPath}'
            : 'https://salonlfc.com/wp-content/uploads/2018/01/image-not-found-1-scaled.png',
        genreIds: themoviedb.genres.map((e) => e.name).toList(),
        id: themoviedb.id,
        originalLanguage: themoviedb.originalLanguage,
        originalTitle: themoviedb.originalTitle,
        overview: themoviedb.overview,
        popularity: themoviedb.popularity,
        posterPath: (themoviedb.posterPath != '')
            ? 'https://image.tmdb.org/t/p/w500${themoviedb.posterPath}'
            : 'https://m.media-amazon.com/images/I/61s8vyZLSzL.jpg',
        releaseDate: themoviedb.releaseDate,
        title: themoviedb.title,
        video: themoviedb.video,
        voteAverage: themoviedb.voteAverage,
        voteCount: themoviedb.voteCount,
      );
}
