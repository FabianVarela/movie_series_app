// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_detail_repository.dart';

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

String $movieDetailRepositoryHash() =>
    r'9c80c54153c2b35800d8776fa31300607e471012';

/// See also [movieDetailRepository].
final movieDetailRepositoryProvider =
    AutoDisposeProvider<MovieDetailRepository>(
  movieDetailRepository,
  name: r'movieDetailRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : $movieDetailRepositoryHash,
);
typedef MovieDetailRepositoryRef
    = AutoDisposeProviderRef<MovieDetailRepository>;
String $fetchMovieHash() => r'aaf708bbbd7e5e04299af65885916b5311a16887';

/// See also [fetchMovie].
class FetchMovieProvider extends AutoDisposeFutureProvider<MovieModel> {
  FetchMovieProvider({
    required this.movieId,
    this.language,
  }) : super(
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
                  : $fetchMovieHash,
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

typedef FetchMovieRef = AutoDisposeFutureProviderRef<MovieModel>;

/// See also [fetchMovie].
final fetchMovieProvider = FetchMovieFamily();

class FetchMovieFamily extends Family<AsyncValue<MovieModel>> {
  FetchMovieFamily();

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
  AutoDisposeFutureProvider<MovieModel> getProviderOverride(
    covariant FetchMovieProvider provider,
  ) {
    return call(
      movieId: provider.movieId,
      language: provider.language,
    );
  }

  @override
  List<ProviderOrFamily>? get allTransitiveDependencies => null;

  @override
  List<ProviderOrFamily>? get dependencies => null;

  @override
  String? get name => r'fetchMovieProvider';
}
