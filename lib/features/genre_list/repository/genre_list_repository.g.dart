// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'genre_list_repository.dart';

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

String _$genreListRepositoryHash() =>
    r'9a62cd2e9c1144df1bcf0d0b35bbaccbbcb24345';

/// See also [genreListRepository].
final genreListRepositoryProvider = AutoDisposeProvider<GenreListRepository>(
  genreListRepository,
  name: r'genreListRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$genreListRepositoryHash,
);
typedef GenreListRepositoryRef = AutoDisposeProviderRef<GenreListRepository>;
String _$fetchGenresHash() => r'11b32509937f028e2f593970bea1b3c1910fc951';

/// See also [fetchGenres].
class FetchGenresProvider extends AutoDisposeFutureProvider<GenresModel> {
  FetchGenresProvider({
    required this.type,
    this.language,
  }) : super(
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

typedef FetchGenresRef = AutoDisposeFutureProviderRef<GenresModel>;

/// See also [fetchGenres].
final fetchGenresProvider = FetchGenresFamily();

class FetchGenresFamily extends Family<AsyncValue<GenresModel>> {
  FetchGenresFamily();

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
  AutoDisposeFutureProvider<GenresModel> getProviderOverride(
    covariant FetchGenresProvider provider,
  ) {
    return call(
      type: provider.type,
      language: provider.language,
    );
  }

  @override
  List<ProviderOrFamily>? get allTransitiveDependencies => null;

  @override
  List<ProviderOrFamily>? get dependencies => null;

  @override
  String? get name => r'fetchGenresProvider';
}
