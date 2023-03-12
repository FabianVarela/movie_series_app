// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_detail_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$movieDetailRepositoryHash() =>
    r'9c80c54153c2b35800d8776fa31300607e471012';

/// See also [movieDetailRepository].
@ProviderFor(movieDetailRepository)
final movieDetailRepositoryProvider =
    AutoDisposeProvider<MovieDetailRepository>.internal(
  movieDetailRepository,
  name: r'movieDetailRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$movieDetailRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef MovieDetailRepositoryRef
    = AutoDisposeProviderRef<MovieDetailRepository>;
String _$fetchMovieHash() => r'aaf708bbbd7e5e04299af65885916b5311a16887';

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

typedef FetchMovieRef = AutoDisposeFutureProviderRef<MovieModel>;

/// See also [fetchMovie].
@ProviderFor(fetchMovie)
const fetchMovieProvider = FetchMovieFamily();

/// See also [fetchMovie].
class FetchMovieFamily extends Family<AsyncValue<MovieModel>> {
  /// See also [fetchMovie].
  const FetchMovieFamily();

  /// See also [fetchMovie].
  FetchMovieProvider call({
    required int movieId,
    String? language,
  }) {
    return FetchMovieProvider(
      movieId: movieId,
      language: language,
    );
  }

  @override
  FetchMovieProvider getProviderOverride(
    covariant FetchMovieProvider provider,
  ) {
    return call(
      movieId: provider.movieId,
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
  String? get name => r'fetchMovieProvider';
}

/// See also [fetchMovie].
class FetchMovieProvider extends AutoDisposeFutureProvider<MovieModel> {
  /// See also [fetchMovie].
  FetchMovieProvider({
    required this.movieId,
    this.language,
  }) : super.internal(
          (ref) => fetchMovie(
            ref,
            movieId: movieId,
            language: language,
          ),
          from: fetchMovieProvider,
          name: r'fetchMovieProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$fetchMovieHash,
          dependencies: FetchMovieFamily._dependencies,
          allTransitiveDependencies:
              FetchMovieFamily._allTransitiveDependencies,
        );

  final int movieId;
  final String? language;

  @override
  bool operator ==(Object other) {
    return other is FetchMovieProvider &&
        other.movieId == movieId &&
        other.language == language;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, movieId.hashCode);
    hash = _SystemHash.combine(hash, language.hashCode);

    return _SystemHash.finish(hash);
  }
}
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
