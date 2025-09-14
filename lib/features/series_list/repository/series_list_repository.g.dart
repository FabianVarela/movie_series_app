// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'series_list_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(seriesListRepository)
const seriesListRepositoryProvider = SeriesListRepositoryProvider._();

final class SeriesListRepositoryProvider
    extends
        $FunctionalProvider<
          SeriesListRepository,
          SeriesListRepository,
          SeriesListRepository
        >
    with $Provider<SeriesListRepository> {
  const SeriesListRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'seriesListRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$seriesListRepositoryHash();

  @$internal
  @override
  $ProviderElement<SeriesListRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  SeriesListRepository create(Ref ref) {
    return seriesListRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(SeriesListRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<SeriesListRepository>(value),
    );
  }
}

String _$seriesListRepositoryHash() =>
    r'08dee1f90a9243901a57405d5dfe69060b324878';

@ProviderFor(fetchSeries)
const fetchSeriesProvider = FetchSeriesFamily._();

final class FetchSeriesProvider
    extends
        $FunctionalProvider<
          AsyncValue<SeriesListModel>,
          SeriesListModel,
          FutureOr<SeriesListModel>
        >
    with $FutureModifier<SeriesListModel>, $FutureProvider<SeriesListModel> {
  const FetchSeriesProvider._({
    required FetchSeriesFamily super.from,
    required ({int? genreId, String? language}) super.argument,
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
  $FutureProviderElement<SeriesListModel> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<SeriesListModel> create(Ref ref) {
    final argument = this.argument as ({int? genreId, String? language});
    return fetchSeries(
      ref,
      genreId: argument.genreId,
      language: argument.language,
    );
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

String _$fetchSeriesHash() => r'a56c9733fefc20a4f0c8a573c5024c9558605f4e';

final class FetchSeriesFamily extends $Family
    with
        $FunctionalFamilyOverride<
          FutureOr<SeriesListModel>,
          ({int? genreId, String? language})
        > {
  const FetchSeriesFamily._()
    : super(
        retry: null,
        name: r'fetchSeriesProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  FetchSeriesProvider call({int? genreId, String? language}) =>
      FetchSeriesProvider._(
        argument: (genreId: genreId, language: language),
        from: this,
      );

  @override
  String toString() => r'fetchSeriesProvider';
}
