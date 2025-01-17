// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'genre_list_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$genreListRepositoryHash() =>
    r'9d681b3770620a376f19e5a1fec5640600adcafe';

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

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef GenreListRepositoryRef = AutoDisposeProviderRef<GenreListRepository>;
String _$fetchGenresHash() => r'19b8e176388b176a80e97c94763328d02f184984';

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
    required GenreType type,
    String? language,
  }) : this._internal(
          (ref) => fetchGenres(
            ref as FetchGenresRef,
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
          type: type,
          language: language,
        );

  FetchGenresProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.type,
    required this.language,
  }) : super.internal();

  final GenreType type;
  final String? language;

  @override
  Override overrideWith(
    FutureOr<GenresModel> Function(FetchGenresRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: FetchGenresProvider._internal(
        (ref) => create(ref as FetchGenresRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        type: type,
        language: language,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<GenresModel> createElement() {
    return _FetchGenresProviderElement(this);
  }

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

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin FetchGenresRef on AutoDisposeFutureProviderRef<GenresModel> {
  /// The parameter `type` of this provider.
  GenreType get type;

  /// The parameter `language` of this provider.
  String? get language;
}

class _FetchGenresProviderElement
    extends AutoDisposeFutureProviderElement<GenresModel> with FetchGenresRef {
  _FetchGenresProviderElement(super.provider);

  @override
  GenreType get type => (origin as FetchGenresProvider).type;
  @override
  String? get language => (origin as FetchGenresProvider).language;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
