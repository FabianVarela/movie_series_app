// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'series_list_repository.dart';

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

String _$seriesListRepositoryHash() =>
    r'd4743ff9490fa7cb10593631f3abfebd1c2d599b';

/// See also [seriesListRepository].
final seriesListRepositoryProvider = AutoDisposeProvider<SeriesListRepository>(
  seriesListRepository,
  name: r'seriesListRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$seriesListRepositoryHash,
);
typedef SeriesListRepositoryRef = AutoDisposeProviderRef<SeriesListRepository>;
String _$fetchSeriesHash() => r'790ca920f405ec7701507d5a1963fbad6d5535d9';

/// See also [fetchSeries].
class FetchSeriesProvider extends AutoDisposeFutureProvider<SeriesListModel> {
  FetchSeriesProvider({
    this.genreId,
    this.language,
  }) : super(
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

typedef FetchSeriesRef = AutoDisposeFutureProviderRef<SeriesListModel>;

/// See also [fetchSeries].
final fetchSeriesProvider = FetchSeriesFamily();

class FetchSeriesFamily extends Family<AsyncValue<SeriesListModel>> {
  FetchSeriesFamily();

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
  AutoDisposeFutureProvider<SeriesListModel> getProviderOverride(
    covariant FetchSeriesProvider provider,
  ) {
    return call(
      genreId: provider.genreId,
      language: provider.language,
    );
  }

  @override
  List<ProviderOrFamily>? get allTransitiveDependencies => null;

  @override
  List<ProviderOrFamily>? get dependencies => null;

  @override
  String? get name => r'fetchSeriesProvider';
}
