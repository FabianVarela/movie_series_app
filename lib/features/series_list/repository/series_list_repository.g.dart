// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'series_list_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$seriesListRepositoryHash() =>
    r'08dee1f90a9243901a57405d5dfe69060b324878';

/// See also [seriesListRepository].
@ProviderFor(seriesListRepository)
final seriesListRepositoryProvider =
    AutoDisposeProvider<SeriesListRepository>.internal(
      seriesListRepository,
      name: r'seriesListRepositoryProvider',
      debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$seriesListRepositoryHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef SeriesListRepositoryRef = AutoDisposeProviderRef<SeriesListRepository>;
String _$fetchSeriesHash() => r'a56c9733fefc20a4f0c8a573c5024c9558605f4e';

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

/// See also [fetchSeries].
@ProviderFor(fetchSeries)
const fetchSeriesProvider = FetchSeriesFamily();

/// See also [fetchSeries].
class FetchSeriesFamily extends Family<AsyncValue<SeriesListModel>> {
  /// See also [fetchSeries].
  const FetchSeriesFamily();

  /// See also [fetchSeries].
  FetchSeriesProvider call({int? genreId, String? language}) {
    return FetchSeriesProvider(genreId: genreId, language: language);
  }

  @override
  FetchSeriesProvider getProviderOverride(
    covariant FetchSeriesProvider provider,
  ) {
    return call(genreId: provider.genreId, language: provider.language);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'fetchSeriesProvider';
}

/// See also [fetchSeries].
class FetchSeriesProvider extends AutoDisposeFutureProvider<SeriesListModel> {
  /// See also [fetchSeries].
  FetchSeriesProvider({int? genreId, String? language})
    : this._internal(
        (ref) => fetchSeries(
          ref as FetchSeriesRef,
          genreId: genreId,
          language: language,
        ),
        from: fetchSeriesProvider,
        name: r'fetchSeriesProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$fetchSeriesHash,
        dependencies: FetchSeriesFamily._dependencies,
        allTransitiveDependencies: FetchSeriesFamily._allTransitiveDependencies,
        genreId: genreId,
        language: language,
      );

  FetchSeriesProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.genreId,
    required this.language,
  }) : super.internal();

  final int? genreId;
  final String? language;

  @override
  Override overrideWith(
    FutureOr<SeriesListModel> Function(FetchSeriesRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: FetchSeriesProvider._internal(
        (ref) => create(ref as FetchSeriesRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        genreId: genreId,
        language: language,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<SeriesListModel> createElement() {
    return _FetchSeriesProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FetchSeriesProvider &&
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

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin FetchSeriesRef on AutoDisposeFutureProviderRef<SeriesListModel> {
  /// The parameter `genreId` of this provider.
  int? get genreId;

  /// The parameter `language` of this provider.
  String? get language;
}

class _FetchSeriesProviderElement
    extends AutoDisposeFutureProviderElement<SeriesListModel>
    with FetchSeriesRef {
  _FetchSeriesProviderElement(super.provider);

  @override
  int? get genreId => (origin as FetchSeriesProvider).genreId;
  @override
  String? get language => (origin as FetchSeriesProvider).language;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
