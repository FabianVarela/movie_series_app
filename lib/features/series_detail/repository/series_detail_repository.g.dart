// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'series_detail_repository.dart';

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

String $seriesDetailRepositoryHash() =>
    r'c697114f83678705de93174aa557990b9e4e1652';

/// See also [seriesDetailRepository].
final seriesDetailRepositoryProvider =
    AutoDisposeProvider<SeriesDetailRepository>(
  seriesDetailRepository,
  name: r'seriesDetailRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : $seriesDetailRepositoryHash,
);
typedef SeriesDetailRepositoryRef
    = AutoDisposeProviderRef<SeriesDetailRepository>;
String $fetchSeriesHash() => r'79240a8f5a091e7c2c305091f0a8e8f8c2fb645a';

/// See also [fetchSeries].
class FetchSeriesProvider extends AutoDisposeFutureProvider<SeriesModel> {
  FetchSeriesProvider({
    required this.tvId,
    this.language,
  }) : super(
          (ref) => fetchSeries(
            ref,
            tvId: tvId,
            language: language,
          ),
          from: fetchSeriesProvider,
          name: r'fetchSeriesProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : $fetchSeriesHash,
        );

  final int tvId;
  final String? language;

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

typedef FetchSeriesRef = AutoDisposeFutureProviderRef<SeriesModel>;

/// See also [fetchSeries].
final fetchSeriesProvider = FetchSeriesFamily();

class FetchSeriesFamily extends Family<AsyncValue<SeriesModel>> {
  FetchSeriesFamily();

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
  AutoDisposeFutureProvider<SeriesModel> getProviderOverride(
    covariant FetchSeriesProvider provider,
  ) {
    return call(
      tvId: provider.tvId,
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
