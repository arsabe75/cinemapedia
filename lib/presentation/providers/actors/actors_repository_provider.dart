import 'package:cinemapedia/infrastructure/datasources/actor_themoviedb_datasource.dart';
import 'package:cinemapedia/infrastructure/repositories/actors_repository_impl.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Este repositorio es inmutable
final actorsRepositoryProvider = Provider((ref) {
  return ActorsRepositoryImpl(ActorThemoviedbDatasource());
});
