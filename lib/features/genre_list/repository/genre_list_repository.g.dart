// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'genre_list_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(genreListRepository)
final genreListRepositoryProvider = GenreListRepositoryProvider._();

final class GenreListRepositoryProvider
    extends
        $FunctionalProvider<
          GenreListRepository,
          GenreListRepository,
          GenreListRepository
        >
    with $Provider<GenreListRepository> {
  GenreListRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'genreListRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$genreListRepositoryHash();

  @$internal
  @override
  $ProviderElement<GenreListRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  GenreListRepository create(Ref ref) {
    return genreListRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GenreListRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GenreListRepository>(value),
    );
  }
}

String _$genreListRepositoryHash() =>
    r'9d681b3770620a376f19e5a1fec5640600adcafe';

@ProviderFor(fetchGenres)
final fetchGenresProvider = FetchGenresFamily._();

final class FetchGenresProvider
    extends
        $FunctionalProvider<
          AsyncValue<GenresModel>,
          GenresModel,
          FutureOr<GenresModel>
        >
    with $FutureModifier<GenresModel>, $FutureProvider<GenresModel> {
  FetchGenresProvider._({
    required FetchGenresFamily super.from,
    required ({GenreType type, String? language}) super.argument,
  }) : super(
         retry: null,
         name: r'fetchGenresProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$fetchGenresHash();

  @override
  String toString() {
    return r'fetchGenresProvider'
        ''
        '$argument';
  }

  @$internal
  @override
  $FutureProviderElement<GenresModel> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<GenresModel> create(Ref ref) {
    final argument = this.argument as ({GenreType type, String? language});
    return fetchGenres(ref, type: argument.type, language: argument.language);
  }

  @override
  bool operator ==(Object other) {
    return other is FetchGenresProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$fetchGenresHash() => r'19b8e176388b176a80e97c94763328d02f184984';

final class FetchGenresFamily extends $Family
    with
        $FunctionalFamilyOverride<
          FutureOr<GenresModel>,
          ({GenreType type, String? language})
        > {
  FetchGenresFamily._()
    : super(
        retry: null,
        name: r'fetchGenresProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  FetchGenresProvider call({required GenreType type, String? language}) =>
      FetchGenresProvider._(
        argument: (type: type, language: language),
        from: this,
      );

  @override
  String toString() => r'fetchGenresProvider';
}
