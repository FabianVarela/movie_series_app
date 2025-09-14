// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'series_detail_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(seriesDetailRepository)
const seriesDetailRepositoryProvider = SeriesDetailRepositoryProvider._();

final class SeriesDetailRepositoryProvider
    extends
        $FunctionalProvider<
          SeriesDetailRepository,
          SeriesDetailRepository,
          SeriesDetailRepository
        >
    with $Provider<SeriesDetailRepository> {
  const SeriesDetailRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'seriesDetailRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$seriesDetailRepositoryHash();

  @$internal
  @override
  $ProviderElement<SeriesDetailRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  SeriesDetailRepository create(Ref ref) {
    return seriesDetailRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(SeriesDetailRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<SeriesDetailRepository>(value),
    );
  }
}

String _$seriesDetailRepositoryHash() =>
    r'228c93f8b296a8c0a4ee535171f2e33a975b4d88';

@ProviderFor(fetchSeries)
const fetchSeriesProvider = FetchSeriesFamily._();

final class FetchSeriesProvider
    extends
        $FunctionalProvider<
          AsyncValue<SeriesModel>,
          SeriesModel,
          FutureOr<SeriesModel>
        >
    with $FutureModifier<SeriesModel>, $FutureProvider<SeriesModel> {
  const FetchSeriesProvider._({
    required FetchSeriesFamily super.from,
    required ({int tvId, String? language}) super.argument,
  }) : super(
         retry: null,
         name: r'fetchSeriesProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$fetchSeriesHash();

  @override
  String toString() {
    return r'fetchSeriesProvider'
        ''
        '$argument';
  }

  @$internal
  @override
  $FutureProviderElement<SeriesModel> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<SeriesModel> create(Ref ref) {
    final argument = this.argument as ({int tvId, String? language});
    return fetchSeries(ref, tvId: argument.tvId, language: argument.language);
  }

  @override
  bool operator ==(Object other) {
    return other is FetchSeriesProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$fetchSeriesHash() => r'0fab67927505496c58f9444e7962747927f5f2a4';

final class FetchSeriesFamily extends $Family
    with
        $FunctionalFamilyOverride<
          FutureOr<SeriesModel>,
          ({int tvId, String? language})
        > {
  const FetchSeriesFamily._()
    : super(
        retry: null,
        name: r'fetchSeriesProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  FetchSeriesProvider call({required int tvId, String? language}) =>
      FetchSeriesProvider._(
        argument: (tvId: tvId, language: language),
        from: this,
      );

  @override
  String toString() => r'fetchSeriesProvider';
}
