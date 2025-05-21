// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_detail_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$movieDetailRepositoryHash() =>
    r'9f1f178498f70e37ab6952b3a2f1e01701d20e3b';

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

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef MovieDetailRepositoryRef =
    AutoDisposeProviderRef<MovieDetailRepository>;
String _$fetchMovieHash() => r'7d02a3222e2ecd5fff65e787df615473703de261';

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

/// See also [fetchMovie].
@ProviderFor(fetchMovie)
const fetchMovieProvider = FetchMovieFamily();

/// See also [fetchMovie].
class FetchMovieFamily extends Family<AsyncValue<MovieModel>> {
  /// See also [fetchMovie].
  const FetchMovieFamily();

  /// See also [fetchMovie].
  FetchMovieProvider call({required int movieId, String? language}) {
    return FetchMovieProvider(movieId: movieId, language: language);
  }

  @override
  FetchMovieProvider getProviderOverride(
    covariant FetchMovieProvider provider,
  ) {
    return call(movieId: provider.movieId, language: provider.language);
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
  FetchMovieProvider({required int movieId, String? language})
    : this._internal(
        (ref) => fetchMovie(
          ref as FetchMovieRef,
          movieId: movieId,
          language: language,
        ),
        from: fetchMovieProvider,
        name: r'fetchMovieProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$fetchMovieHash,
        dependencies: FetchMovieFamily._dependencies,
        allTransitiveDependencies: FetchMovieFamily._allTransitiveDependencies,
        movieId: movieId,
        language: language,
      );

  FetchMovieProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.movieId,
    required this.language,
  }) : super.internal();

  final int movieId;
  final String? language;

  @override
  Override overrideWith(
    FutureOr<MovieModel> Function(FetchMovieRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: FetchMovieProvider._internal(
        (ref) => create(ref as FetchMovieRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        movieId: movieId,
        language: language,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<MovieModel> createElement() {
    return _FetchMovieProviderElement(this);
  }

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

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin FetchMovieRef on AutoDisposeFutureProviderRef<MovieModel> {
  /// The parameter `movieId` of this provider.
  int get movieId;

  /// The parameter `language` of this provider.
  String? get language;
}

class _FetchMovieProviderElement
    extends AutoDisposeFutureProviderElement<MovieModel>
    with FetchMovieRef {
  _FetchMovieProviderElement(super.provider);

  @override
  int get movieId => (origin as FetchMovieProvider).movieId;
  @override
  String? get language => (origin as FetchMovieProvider).language;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
