// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'genre_list_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$genreListRepositoryHash() =>
    r'9a62cd2e9c1144df1bcf0d0b35bbaccbbcb24345';

/// See also [genreListRepository].
@ProviderFor(genreListRepository)
final genreListRepositoryProvider =
    AutoDisposeProvider<GenreListRepository>.internal(
  genreListRepository,
  name: r'genreListRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$genreListRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef GenreListRepositoryRef = AutoDisposeProviderRef<GenreListRepository>;
String _$fetchGenresHash() => r'11b32509937f028e2f593970bea1b3c1910fc951';

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

typedef FetchGenresRef = AutoDisposeFutureProviderRef<GenresModel>;

/// See also [fetchGenres].
@ProviderFor(fetchGenres)
const fetchGenresProvider = FetchGenresFamily();

/// See also [fetchGenres].
class FetchGenresFamily extends Family<AsyncValue<GenresModel>> {
  /// See also [fetchGenres].
  const FetchGenresFamily();

  /// See also [fetchGenres].
  FetchGenresProvider call({
    required GenreType type,
    String? language,
  }) {
    return FetchGenresProvider(
      type: type,
      language: language,
    );
  }

  @override
  FetchGenresProvider getProviderOverride(
    covariant FetchGenresProvider provider,
  ) {
    return call(
      type: provider.type,
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
  String? get name => r'fetchGenresProvider';
}

/// See also [fetchGenres].
class FetchGenresProvider extends AutoDisposeFutureProvider<GenresModel> {
  /// See also [fetchGenres].
  FetchGenresProvider({
    required this.type,
    this.language,
  }) : super.internal(
          (ref) => fetchGenres(
            ref,
            type: type,
            language: language,
          ),
          from: fetchGenresProvider,
          name: r'fetchGenresProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$fetchGenresHash,
          dependencies: FetchGenresFamily._dependencies,
          allTransitiveDependencies:
              FetchGenresFamily._allTransitiveDependencies,
        );

  final GenreType type;
  final String? language;

  @override
  bool operator ==(Object other) {
    return other is FetchGenresProvider &&
        other.type == type &&
        other.language == language;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, type.hashCode);
    hash = _SystemHash.combine(hash, language.hashCode);

    return _SystemHash.finish(hash);
  }
}
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
