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
String $fetchGendersHash() => r'9bdbe18360d5b3e60452db3bd43562d1acd97d7f';

/// See also [fetchGenders].
class FetchGendersProvider extends AutoDisposeFutureProvider<GendersModel> {
  FetchGendersProvider({
    required this.language,
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

  final String language;

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
    required String language,
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

String $fetchMoviesHash() => r'1a5df738e9f081927993847fe898af27fdfa5992';

/// See also [fetchMovies].
class FetchMoviesProvider extends AutoDisposeFutureProvider<MoviesModel> {
  FetchMoviesProvider({
    required this.language,
    this.genreId,
  }) : super(
          (ref) => fetchMovies(
            ref,
            language: language,
            genreId: genreId,
          ),
          from: fetchMoviesProvider,
          name: r'fetchMoviesProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : $fetchMoviesHash,
        );

  final String language;
  final int? genreId;

  @override
  bool operator ==(Object other) {
    return other is FetchMoviesProvider &&
        other.language == language &&
        other.genreId == genreId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, language.hashCode);
    hash = _SystemHash.combine(hash, genreId.hashCode);

    return _SystemHash.finish(hash);
  }
}

typedef FetchMoviesRef = AutoDisposeFutureProviderRef<MoviesModel>;

/// See also [fetchMovies].
final fetchMoviesProvider = FetchMoviesFamily();

class FetchMoviesFamily extends Family<AsyncValue<MoviesModel>> {
  FetchMoviesFamily();

  FetchMoviesProvider call({
    required String language,
    int? genreId,
  }) {
    return FetchMoviesProvider(
      language: language,
      genreId: genreId,
    );
  }

  @override
  AutoDisposeFutureProvider<MoviesModel> getProviderOverride(
    covariant FetchMoviesProvider provider,
  ) {
    return call(
      language: provider.language,
      genreId: provider.genreId,
    );
  }

  @override
  List<ProviderOrFamily>? get allTransitiveDependencies => null;

  @override
  List<ProviderOrFamily>? get dependencies => null;

  @override
  String? get name => r'fetchMoviesProvider';
}
