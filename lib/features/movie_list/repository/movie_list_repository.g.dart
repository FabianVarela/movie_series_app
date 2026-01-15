// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_list_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(movieListRepository)
final movieListRepositoryProvider = MovieListRepositoryProvider._();

final class MovieListRepositoryProvider
    extends
        $FunctionalProvider<
          MovieListRepository,
          MovieListRepository,
          MovieListRepository
        >
    with $Provider<MovieListRepository> {
  MovieListRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'movieListRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$movieListRepositoryHash();

  @$internal
  @override
  $ProviderElement<MovieListRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  MovieListRepository create(Ref ref) {
    return movieListRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(MovieListRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<MovieListRepository>(value),
    );
  }
}

String _$movieListRepositoryHash() =>
    r'7ec9688cfb8756f5b5493f766d71e654b96df703';

@ProviderFor(fetchMovies)
final fetchMoviesProvider = FetchMoviesFamily._();

final class FetchMoviesProvider
    extends
        $FunctionalProvider<
          AsyncValue<MoviesModel>,
          MoviesModel,
          FutureOr<MoviesModel>
        >
    with $FutureModifier<MoviesModel>, $FutureProvider<MoviesModel> {
  FetchMoviesProvider._({
    required FetchMoviesFamily super.from,
    required ({int? genreId, String? language}) super.argument,
  }) : super(
         retry: null,
         name: r'fetchMoviesProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$fetchMoviesHash();

  @override
  String toString() {
    return r'fetchMoviesProvider'
        ''
        '$argument';
  }

  @$internal
  @override
  $FutureProviderElement<MoviesModel> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<MoviesModel> create(Ref ref) {
    final argument = this.argument as ({int? genreId, String? language});
    return fetchMovies(
      ref,
      genreId: argument.genreId,
      language: argument.language,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is FetchMoviesProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$fetchMoviesHash() => r'65903c8e193ec6f2798c38a35e3c4ffeb1618846';

final class FetchMoviesFamily extends $Family
    with
        $FunctionalFamilyOverride<
          FutureOr<MoviesModel>,
          ({int? genreId, String? language})
        > {
  FetchMoviesFamily._()
    : super(
        retry: null,
        name: r'fetchMoviesProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  FetchMoviesProvider call({int? genreId, String? language}) =>
      FetchMoviesProvider._(
        argument: (genreId: genreId, language: language),
        from: this,
      );

  @override
  String toString() => r'fetchMoviesProvider';
}
