// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'series_detail_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$seriesDetailRepositoryHash() =>
    r'c697114f83678705de93174aa557990b9e4e1652';

/// See also [seriesDetailRepository].
@ProviderFor(seriesDetailRepository)
final seriesDetailRepositoryProvider =
    AutoDisposeProvider<SeriesDetailRepository>.internal(
  seriesDetailRepository,
  name: r'seriesDetailRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$seriesDetailRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef SeriesDetailRepositoryRef
    = AutoDisposeProviderRef<SeriesDetailRepository>;
String _$fetchSeriesHash() => r'79240a8f5a091e7c2c305091f0a8e8f8c2fb645a';

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
class FetchSeriesFamily extends Family<AsyncValue<SeriesModel>> {
  /// See also [fetchSeries].
  const FetchSeriesFamily();

  /// See also [fetchSeries].
  FetchSeriesProvider call({
    required int tvId,
    String? language,
  }) {
    return FetchSeriesProvider(
      tvId: tvId,
      language: language,
    );
  }

  @override
  FetchSeriesProvider getProviderOverride(
    covariant FetchSeriesProvider provider,
  ) {
    return call(
      tvId: provider.tvId,
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
  String? get name => r'fetchSeriesProvider';
}

/// See also [fetchSeries].
class FetchSeriesProvider extends AutoDisposeFutureProvider<SeriesModel> {
  /// See also [fetchSeries].
  FetchSeriesProvider({
    required int tvId,
    String? language,
  }) : this._internal(
          (ref) => fetchSeries(
            ref as FetchSeriesRef,
            tvId: tvId,
            language: language,
          ),
          from: fetchSeriesProvider,
          name: r'fetchSeriesProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$fetchSeriesHash,
          dependencies: FetchSeriesFamily._dependencies,
          allTransitiveDependencies:
              FetchSeriesFamily._allTransitiveDependencies,
          tvId: tvId,
          language: language,
        );

  FetchSeriesProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.tvId,
    required this.language,
  }) : super.internal();

  final int tvId;
  final String? language;

  @override
  Override overrideWith(
    FutureOr<SeriesModel> Function(FetchSeriesRef provider) create,
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
        tvId: tvId,
        language: language,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<SeriesModel> createElement() {
    return _FetchSeriesProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FetchSeriesProvider &&
        other.tvId == tvId &&
        other.language == language;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, tvId.hashCode);
    hash = _SystemHash.combine(hash, language.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin FetchSeriesRef on AutoDisposeFutureProviderRef<SeriesModel> {
  /// The parameter `tvId` of this provider.
  int get tvId;

  /// The parameter `language` of this provider.
  String? get language;
}

class _FetchSeriesProviderElement
    extends AutoDisposeFutureProviderElement<SeriesModel> with FetchSeriesRef {
  _FetchSeriesProviderElement(super.provider);

  @override
  int get tvId => (origin as FetchSeriesProvider).tvId;
  @override
  String? get language => (origin as FetchSeriesProvider).language;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
