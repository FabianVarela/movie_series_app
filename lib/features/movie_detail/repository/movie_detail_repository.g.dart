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
String $fetchMovieHash() => r'7f982fbcc645e2c8f454573fc473dc61960737e1';

/// See also [fetchMovie].
class FetchMovieProvider extends AutoDisposeFutureProvider<MovieModel> {
  FetchMovieProvider({
    required this.movieId,
    required this.language,
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
  final String language;

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
    required String language,
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

String $fetchCreditsHash() => r'19a90e7c2b9feebbf95df0557c01ea7ab2de884a';

/// See also [fetchCredits].
class FetchCreditsProvider extends AutoDisposeFutureProvider<CreditsModel> {
  FetchCreditsProvider({
    required this.movieId,
    required this.language,
  }) : super(
          (ref) => fetchCredits(
            ref,
            movieId: movieId,
            language: language,
          ),
          from: fetchCreditsProvider,
          name: r'fetchCreditsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : $fetchCreditsHash,
        );

  final int movieId;
  final String language;

  @override
  bool operator ==(Object other) {
    return other is FetchCreditsProvider &&
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

typedef FetchCreditsRef = AutoDisposeFutureProviderRef<CreditsModel>;

/// See also [fetchCredits].
final fetchCreditsProvider = FetchCreditsFamily();

class FetchCreditsFamily extends Family<AsyncValue<CreditsModel>> {
  FetchCreditsFamily();

  FetchCreditsProvider call({
    required int movieId,
    required String language,
  }) {
    return FetchCreditsProvider(
      movieId: movieId,
      language: language,
    );
  }

  @override
  AutoDisposeFutureProvider<CreditsModel> getProviderOverride(
    covariant FetchCreditsProvider provider,
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
  String? get name => r'fetchCreditsProvider';
}

String $fetchTrailersHash() => r'0e47dedf66af1dceb10abd84c72ba1c1dd0de25d';

/// See also [fetchTrailers].
class FetchTrailersProvider extends AutoDisposeFutureProvider<TrailersModel> {
  FetchTrailersProvider({
    required this.movieId,
    required this.language,
  }) : super(
          (ref) => fetchTrailers(
            ref,
            movieId: movieId,
            language: language,
          ),
          from: fetchTrailersProvider,
          name: r'fetchTrailersProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : $fetchTrailersHash,
        );

  final int movieId;
  final String language;

  @override
  bool operator ==(Object other) {
    return other is FetchTrailersProvider &&
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

typedef FetchTrailersRef = AutoDisposeFutureProviderRef<TrailersModel>;

/// See also [fetchTrailers].
final fetchTrailersProvider = FetchTrailersFamily();

class FetchTrailersFamily extends Family<AsyncValue<TrailersModel>> {
  FetchTrailersFamily();

  FetchTrailersProvider call({
    required int movieId,
    required String language,
  }) {
    return FetchTrailersProvider(
      movieId: movieId,
      language: language,
    );
  }

  @override
  AutoDisposeFutureProvider<TrailersModel> getProviderOverride(
    covariant FetchTrailersProvider provider,
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
  String? get name => r'fetchTrailersProvider';
}
