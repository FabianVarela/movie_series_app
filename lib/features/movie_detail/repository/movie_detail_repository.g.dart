// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_detail_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(movieDetailRepository)
final movieDetailRepositoryProvider = MovieDetailRepositoryProvider._();

final class MovieDetailRepositoryProvider
    extends
        $FunctionalProvider<
          MovieDetailRepository,
          MovieDetailRepository,
          MovieDetailRepository
        >
    with $Provider<MovieDetailRepository> {
  MovieDetailRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'movieDetailRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$movieDetailRepositoryHash();

  @$internal
  @override
  $ProviderElement<MovieDetailRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  MovieDetailRepository create(Ref ref) {
    return movieDetailRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(MovieDetailRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<MovieDetailRepository>(value),
    );
  }
}

String _$movieDetailRepositoryHash() =>
    r'9f1f178498f70e37ab6952b3a2f1e01701d20e3b';

@ProviderFor(fetchMovie)
final fetchMovieProvider = FetchMovieFamily._();

final class FetchMovieProvider
    extends
        $FunctionalProvider<
          AsyncValue<MovieModel>,
          MovieModel,
          FutureOr<MovieModel>
        >
    with $FutureModifier<MovieModel>, $FutureProvider<MovieModel> {
  FetchMovieProvider._({
    required FetchMovieFamily super.from,
    required ({int movieId, String? language}) super.argument,
  }) : super(
         retry: null,
         name: r'fetchMovieProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$fetchMovieHash();

  @override
  String toString() {
    return r'fetchMovieProvider'
        ''
        '$argument';
  }

  @$internal
  @override
  $FutureProviderElement<MovieModel> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<MovieModel> create(Ref ref) {
    final argument = this.argument as ({int movieId, String? language});
    return fetchMovie(
      ref,
      movieId: argument.movieId,
      language: argument.language,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is FetchMovieProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$fetchMovieHash() => r'7d02a3222e2ecd5fff65e787df615473703de261';

final class FetchMovieFamily extends $Family
    with
        $FunctionalFamilyOverride<
          FutureOr<MovieModel>,
          ({int movieId, String? language})
        > {
  FetchMovieFamily._()
    : super(
        retry: null,
        name: r'fetchMovieProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  FetchMovieProvider call({required int movieId, String? language}) =>
      FetchMovieProvider._(
        argument: (movieId: movieId, language: language),
        from: this,
      );

  @override
  String toString() => r'fetchMovieProvider';
}
