// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_list_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// ignore_for_file: avoid_private_typedef_functions, non_constant_identifier_names, subtype_of_sealed_class, invalid_use_of_internal_member, unused_element, constant_identifier_names, unnecessary_raw_strings, library_private_types_in_public_api

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

String $movieListRepositoryHash() =>
    r'2ac1e3caaa772dd06be6e598971e800bc0284a25';

/// See also [movieListRepository].
final movieListRepositoryProvider = AutoDisposeProvider<MovieListRepository>(
  movieListRepository,
  name: r'movieListRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : $movieListRepositoryHash,
);
typedef MovieListRepositoryRef = AutoDisposeProviderRef<MovieListRepository>;
String $fetchGendersHash() => r'0afeff2ae1dbcd73be7a7e79c58bb454f6b0cd72';

/// See also [fetchGenders].
class FetchGendersProvider extends AutoDisposeFutureProvider<GendersModel> {
  FetchGendersProvider({
    this.language,
  }) : super(
          (ref) => fetchGenders(
            ref,
            language: language,
          ),
          from: fetchGendersProvider,
          name: r'fetchGendersProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : $fetchGendersHash,
        );

  final String? language;

  @override
  bool operator ==(Object other) {
    return other is FetchGendersProvider && other.language == language;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, language.hashCode);

    return _SystemHash.finish(hash);
  }
}

typedef FetchGendersRef = AutoDisposeFutureProviderRef<GendersModel>;

/// See also [fetchGenders].
final fetchGendersProvider = FetchGendersFamily();

class FetchGendersFamily extends Family<AsyncValue<GendersModel>> {
  FetchGendersFamily();

  FetchGendersProvider call({
    String? language,
  }) {
    return FetchGendersProvider(
      language: language,
    );
  }

  @override
  AutoDisposeFutureProvider<GendersModel> getProviderOverride(
    covariant FetchGendersProvider provider,
  ) {
    return call(
      language: provider.language,
    );
  }

  @override
  List<ProviderOrFamily>? get allTransitiveDependencies => null;

  @override
  List<ProviderOrFamily>? get dependencies => null;

  @override
  String? get name => r'fetchGendersProvider';
}

String $fetchMoviesHash() => r'dcc57e8d71d88472173df7df0290b7122d49aa94';

/// See also [fetchMovies].
class FetchMoviesProvider extends AutoDisposeFutureProvider<MoviesModel> {
  FetchMoviesProvider({
    this.genreId,
    this.language,
  }) : super(
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
                  : $fetchMoviesHash,
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

typedef FetchMoviesRef = AutoDisposeFutureProviderRef<MoviesModel>;

/// See also [fetchMovies].
final fetchMoviesProvider = FetchMoviesFamily();

class FetchMoviesFamily extends Family<AsyncValue<MoviesModel>> {
  FetchMoviesFamily();

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
  AutoDisposeFutureProvider<MoviesModel> getProviderOverride(
    covariant FetchMoviesProvider provider,
  ) {
    return call(
      genreId: provider.genreId,
      language: provider.language,
    );
  }

  @override
  List<ProviderOrFamily>? get allTransitiveDependencies => null;

  @override
  List<ProviderOrFamily>? get dependencies => null;

  @override
  String? get name => r'fetchMoviesProvider';
}
