// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_list_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$movieListRepositoryHash() =>
    r'2ac1e3caaa772dd06be6e598971e800bc0284a25';

/// See also [movieListRepository].
@ProviderFor(movieListRepository)
final movieListRepositoryProvider =
    AutoDisposeProvider<MovieListRepository>.internal(
  movieListRepository,
  name: r'movieListRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$movieListRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef MovieListRepositoryRef = AutoDisposeProviderRef<MovieListRepository>;
String _$fetchMoviesHash() => r'dcc57e8d71d88472173df7df0290b7122d49aa94';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

typedef FetchMoviesRef = AutoDisposeFutureProviderRef<MoviesModel>;

/// See also [fetchMovies].
@ProviderFor(fetchMovies)
const fetchMoviesProvider = FetchMoviesFamily();

/// See also [fetchMovies].
class FetchMoviesFamily extends Family<AsyncValue<MoviesModel>> {
  /// See also [fetchMovies].
  const FetchMoviesFamily();

  /// See also [fetchMovies].
  FetchMoviesProvider call({
    int? genreId,
    String? language,
  }) {
    return FetchMoviesProvider(
      genreId: genreId,
      language: language,
    );
  }

  @override
  FetchMoviesProvider getProviderOverride(
    covariant FetchMoviesProvider provider,
  ) {
    return call(
      genreId: provider.genreId,
      language: provider.language,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'fetchMoviesProvider';
}

/// See also [fetchMovies].
class FetchMoviesProvider extends AutoDisposeFutureProvider<MoviesModel> {
  /// See also [fetchMovies].
  FetchMoviesProvider({
    this.genreId,
    this.language,
  }) : super.internal(
          (ref) => fetchMovies(
            ref,
            genreId: genreId,
            language: language,
          ),
          from: fetchMoviesProvider,
          name: r'fetchMoviesProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$fetchMoviesHash,
          dependencies: FetchMoviesFamily._dependencies,
          allTransitiveDependencies:
              FetchMoviesFamily._allTransitiveDependencies,
        );

  final int? genreId;
  final String? language;

  @override
  bool operator ==(Object other) {
    return other is FetchMoviesProvider &&
        other.genreId == genreId &&
        other.language == language;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, genreId.hashCode);
    hash = _SystemHash.combine(hash, language.hashCode);

    return _SystemHash.finish(hash);
  }
}
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
