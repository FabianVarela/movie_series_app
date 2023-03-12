// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'series_list_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$seriesListRepositoryHash() =>
    r'd4743ff9490fa7cb10593631f3abfebd1c2d599b';

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

typedef SeriesListRepositoryRef = AutoDisposeProviderRef<SeriesListRepository>;
String _$fetchSeriesHash() => r'790ca920f405ec7701507d5a1963fbad6d5535d9';

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

typedef FetchSeriesRef = AutoDisposeFutureProviderRef<SeriesListModel>;

/// See also [fetchSeries].
@ProviderFor(fetchSeries)
const fetchSeriesProvider = FetchSeriesFamily();

/// See also [fetchSeries].
class FetchSeriesFamily extends Family<AsyncValue<SeriesListModel>> {
  /// See also [fetchSeries].
  const FetchSeriesFamily();

  /// See also [fetchSeries].
  FetchSeriesProvider call({
    int? genreId,
    String? language,
  }) {
    return FetchSeriesProvider(
      genreId: genreId,
      language: language,
    );
  }

  @override
  FetchSeriesProvider getProviderOverride(
    covariant FetchSeriesProvider provider,
  ) {
    return call(
      genreId: provider.genreId,
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
class FetchSeriesProvider extends AutoDisposeFutureProvider<SeriesListModel> {
  /// See also [fetchSeries].
  FetchSeriesProvider({
    this.genreId,
    this.language,
  }) : super.internal(
          (ref) => fetchSeries(
            ref,
            genreId: genreId,
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
        );

  final int? genreId;
  final String? language;

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
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
